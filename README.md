# 🚀 MultiOrg 

**Streamline your workflow with intuitive task management and real-time collaboration. Built for teams who value simplicity and control.**

---


## ✨ Why Open-Source Kanban?

- **🔓 Complete Control**: Own your data, customize without limits, deploy anywhere
- **💰 Cost-Effective**: No per-user fees or subscription locks - scale freely 
- **🔒 Privacy First**: Keep sensitive project data on your own infrastructure
- **🛠️ Extensible**: Modify and extend functionality to match your exact needs
- **🌍 Community-Driven**: Benefit from collective improvements and security reviews
- **🏢 Enterprise Ready**: Self-host with confidence for compliance and security requirements

## 🎯 Features

- **📋 Intuitive Kanban Boards**: Drag-and-drop task management with unlimited columns
- **👥 Team Collaboration**: Real-time updates, comments, and seamless teamwork
- **🏢 Multi-Organization**: Manage multiple teams and organizations in one place
- **⚡ Lightning Fast**: Built with modern web technologies for instant interactions
- **🔐 Secure Authentication**: Enterprise-grade security with flexible auth options
- **📱 Mobile Responsive**: Perfect experience across all devices
- **🎨 Rich Text Editor**: Full-featured task descriptions with markdown support
- **📎 File Attachments**: Upload and manage files directly in tasks
- **🔔 Smart Notifications**: Stay updated with intelligent notification system
- **📊 Auto-Generated APIs**: Type-safe REST APIs with interactive documentation
- **🚀 One-Click Deploy**: Easy deployment to Vercel or your own infrastructure
- **📝 Blog Post Management**: Full CRUD operations for blog posts with rich text editing for site admin users


## 🚀 Quick Start

### Prerequisites

- Node.js 18+ 
- PostgreSQL database
- npm, yarn, pnpm, or bun

### 1. Clone & Install

```bash
git clone https://github.com/agoe/multiorg.git
cd multiorg
npm install
```

### 2. Environment Setup

Create a `.env.local` or `.env` file:

```env
# Database
DATABASE_URL="postgresql://username:password@localhost:5432/multiorg"

# Auth
BETTER_AUTH_SECRET="your-secret-key-here"
BETTER_AUTH_URL="http://localhost:3000"

# Email (for organization invites and password resets)
RESEND_API_KEY="your-resend-api-key"
FROM_EMAIL="noreply@yourdomain.com"

# File Storage (for task attachments and profile pictures)
BLOB_READ_WRITE_TOKEN="your-vercel-blob-token"
```

### 3. Database Setup

```bash
# Generate the database client and API
npm run zenstack:generate

# Push the schema to your database
npm run prisma:push
```

### 4. Start Development Server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to see your kanban boards!

### 5. Create a blog post
You must have a user with the role `admin` to create a blog post.
Navigate to `/posts/new` to create a blog post.
Admin users will see special UI related to blog posts, like editing the blog post, and draft posts.

## 📚 API Documentation

MultiOrg automatically generates comprehensive API documentation:

- **Interactive API Docs**: Visit `/api/openapi/reference` for full API exploration
- **OpenAPI Schema**: Available at `/api/openapi/openapi.json`
- **Type-Safe Hooks**: Auto-generated React Query hooks for seamless frontend integration

## 🚀 Deployment

1. Add environment variables
2. Deploy with the custom build command: `npm run vercel:build`


## 🏗️ Project Structure

```
multiorg/
├── app/                   # Next.js app directory
│   ├── boards/            # Kanban board pages
│   ├── posts/             # Blog pages
│   ├── api/               # API routes, auth, and OpenAPI docs
│   └── auth/              # Authentication pages
├── components/            # React components
│   ├── boards/            # Board-specific components
│   ├── marketing/         # Landing page components
│   ├── posts/             # Blog components
│   └── ui/                # Reusable UI components
├── hooks/                 # Utility hooks and auto-generated React Query hooks
├── lib/                   # Utility functions and configurations
└── schema.zmodel          # ZenStack schema with access policies
```




## 🌟 Star History

If you find MultiOrg useful, please consider giving it a star on GitHub! ⭐

## 📧 Support

- **Issues**: Report bugs or request features via [GitHub Issues](https://github.com/agoe/issues)

---

**Ready to streamline your team's workflow?** [Try MultiOrg now](
https://multiorg.digital) or [star the repo](https://github.com/agoe to show your support! 🚀
git fetch upstream
git merge upstream/main   # oder rebase, cherry-pick, etc.
git push origin main