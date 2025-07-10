relativity.qubitpi.org site
===========================

The site code contains:

- **Root**: Monorepo configuration with Turbo, pnpm workspace, and shared tooling
- **packages/**: library package
- **apps/web/**: Next.js application showing the [relativity.qubitpi.org]() site

Development Commands
--------------------

### Root Level (uses Turbo for orchestration)

- `pnpm dev` - Start all development servers
- `pnpm build` - Build all packages and apps
- `pnpm lint` - Lint all packages and apps
- `pnpm type-check` - TypeScript checking across workspace
- `pnpm format` - Check code formatting with Prettier
- `pnpm format:write` - Format all code with Prettier

### Web App (apps/web/)

- `pnpm dev` - Start Next.js development server
- `pnpm build` - Build Next.js application
- `pnpm start` - Start production server
- `pnpm lint` - ESLint for Next.js app
- `pnpm type-check` - TypeScript checking
- `pnpm registry:build` - Build Shadcn registry components
