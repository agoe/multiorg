# ----------------- 1️⃣ Dependencies -----------------
FROM node:20-alpine AS deps
WORKDIR /app

# pnpm installieren
RUN npm install -g pnpm

# Kopiere package.json + pnpm-lock.yaml für Caching
COPY package.json pnpm-lock.yaml* ./

# Dependencies installieren (frozen lockfile für reproduzierbaren Build)
RUN pnpm install --frozen-lockfile

# ----------------- 2️⃣ Build Stage -----------------
FROM node:20-alpine AS builder
WORKDIR /app

# pnpm installieren
RUN npm install -g pnpm

# Kopiere Dependencies aus deps
COPY --from=deps /app/node_modules ./node_modules

# Kopiere gesamten Code
COPY . .

# ZenStack generieren (inkl. Prisma Client)
RUN pnpm run zenstack:generate

# Next.js Build
RUN pnpm run build

# ----------------- 3️⃣ Production Runner -----------------
FROM node:20-alpine AS runner
WORKDIR /app

ENV NODE_ENV=production

# Unprivileged user für Sicherheit
RUN addgroup -g 1001 -S nodejs \
    && adduser -S nextjs -u 1001 -G nodejs

# pnpm installieren
RUN npm install -g pnpm

# Alles aus builder kopieren
COPY --from=builder /app ./

USER nextjs
EXPOSE 3000

# ----------------- 4️⃣ Start Command -----------------
CMD ["pnpm", "start"]
