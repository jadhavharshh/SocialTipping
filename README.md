# SocialTipping

A decentralized social tipping platform built on Solana that allows users to register usernames and send cryptocurrency tips through easy-to-remember handles.

## What is SocialTipping?

SocialTipping is an open-source Solana-based application that simplifies cryptocurrency tipping by enabling users to register custom usernames and receive tips through memorable handles instead of complex wallet addresses. Built with modern web technologies and Solana's high-performance blockchain, it provides a seamless experience for both content creators and their supporters.

## Why SocialTipping?

Current cryptocurrency tipping solutions are either **complex to use**, **centralized**, or **limited to specific platforms**.

SocialTipping is different:

- ✅ **Decentralized** – Built on Solana blockchain, no central authority
- 🚀 **Fast & Cheap** – Leverages Solana's low fees and instant transactions
- 🔒 **Self-Custody** – Users maintain full control of their funds
- 📱 **User-Friendly** – Simple username system instead of complex addresses
- 🌐 **Cross-Platform** – Use anywhere, not limited to specific social media
- 🛠️ **Open Source** – Transparent, auditable, and community-driven
- ⚡ **Modern Stack** – Built with the latest web and blockchain technologies

## Tech Stack

SocialTipping is built with modern and reliable technologies:

- **Blockchain**: Solana, Anchor Framework
- **Frontend**: Next.js, React, TypeScript, TailwindCSS
- **Wallet Integration**: Solana Wallet Adapter
- **Smart Contracts**: Rust, Anchor
- **Build System**: Turbo monorepo, pnpm
- **Development**: TypeScript, ESLint, Prettier

## Getting Started

### Prerequisites

**Required Versions:**

- [Node.js](https://nodejs.org/en/download) (v18 or higher)
- [pnpm](https://pnpm.io) (v9 or higher)
- [Rust](https://rustup.rs/) (latest stable)
- [Solana CLI](https://docs.solana.com/cli/install-solana-cli-tools) (v1.18 or higher)
- [Anchor](https://www.anchor-lang.com/docs/installation) (v0.31.1)

Before running the application, you'll need to set up the Solana development environment and configure local validator.

### Setup Options

<details open>
<summary><b>Local Development Setup (Recommended)</b></summary>

#### Quick Start Guide

1. **Clone and Install**

   ```bash
   # Clone the repository
   git clone https://github.com/yourusername/SocialTipping.git
   cd SocialTipping

   # Install dependencies
   pnpm install
   ```

2. **Set Up Solana Environment**

   ```bash
   # Generate a keypair for development
   solana-keygen new --no-bip39-passphrase

   # Set Solana to use local validator
   solana config set --url localhost
   ```

3. **Start Local Blockchain**

   ```bash
   # Start local Solana validator
   ./start-validator.sh
   ```

4. **Build and Deploy Smart Contract**

   ```bash
   # Build the Anchor program
   pnpm run anchor:build

   # Deploy to local validator
   pnpm run anchor:deploy:localnet
   ```

5. **Start the Application**

   ```bash
   # Start all applications
   pnpm run dev
   ```

6. **Open in Browser**

   Visit [http://localhost:3000](http://localhost:3000)

</details>

### Environment Setup

1. **Solana Configuration**

   The application is preconfigured for local development. Environment variables are set in `.env.local`:

   ```env
   NEXT_PUBLIC_SOLANA_NETWORK=localnet
   NEXT_PUBLIC_RPC_URL=http://localhost:8899
   NEXT_PUBLIC_PROGRAM_ID=your_program_id_after_deployment
   ```

2. **Wallet Setup**

   - The development keypair is automatically generated during setup
   - For production, configure your wallet through the Solana Wallet Adapter
   - Supported wallets: Phantom, Solflare, Coinbase Wallet, and more

3. **Network Configuration**

   - **Localnet**: Fast development with instant finality
   - **Devnet**: Testing with live network conditions
   - **Mainnet**: Production deployment with real SOL

### Development Workflow

#### Daily Development
```bash
# 1. Start the local blockchain
./start-validator.sh

# 2. Start all applications in development mode
pnpm run dev

# 3. Make changes to smart contracts or frontend
# Smart Contracts: Edit programs/src/lib.rs
# Frontend: Edit apps/web/src/

# 4. Build and test changes
pnpm run anchor:build    # Build Solana program
pnpm run anchor:test     # Run program tests
pnpm run build          # Build all applications
```

#### Code Quality Checks
```bash
pnpm run lint           # Check code style and potential issues
pnpm run check-types    # Verify TypeScript compilation
pnpm run format         # Auto-format all code
```

#### Testing
```bash
# Run Anchor program tests
pnpm run anchor:test

# Monitor blockchain activity
./monitor-activity.sh
```

## Project Structure

```
SocialTipping/
├── programs/                 # Solana smart contracts
│   ├── src/lib.rs           # Main program logic
│   └── Cargo.toml           # Rust dependencies
├── apps/
│   ├── web/                 # Next.js frontend application
│   └── docs/                # Documentation site
├── packages/                # Shared packages
│   ├── ui/                  # React component library
│   ├── eslint-config/       # Shared ESLint configuration
│   └── typescript-config/   # Shared TypeScript configuration
├── tests/                   # Anchor program tests
├── migrations/              # Deployment scripts
├── Anchor.toml             # Anchor framework configuration
├── start-validator.sh      # Local validator startup script
└── .env.local             # Environment variables
```

## Available Commands

### Development Commands
```bash
# Start all applications
pnpm run dev

# Build all packages
pnpm run build

# Run type checking
pnpm run check-types

# Lint all code
pnpm run lint

# Format code
pnpm run format
```

### Solana/Anchor Commands
```bash
# Build smart contracts
pnpm run anchor:build

# Run smart contract tests
pnpm run anchor:test

# Deploy to localnet
pnpm run anchor:deploy:localnet

# Deploy to devnet
pnpm run anchor:deploy:devnet

# Deploy to mainnet
pnpm run anchor:deploy:mainnet
```

### Blockchain Commands
```bash
# Start local validator
./start-validator.sh

# Monitor blockchain activity
./monitor-activity.sh

# Check SOL balance
solana balance

# Request test SOL
solana airdrop 1
```

## Core Features

### Username Registration
- Register unique usernames on-chain
- Permanent, transferable username ownership
- Anti-squatting mechanisms

### Social Tipping
- Send tips using @username instead of wallet addresses
- Support for SOL and SPL tokens
- Instant, low-cost transactions

### Wallet Integration
- Support for all major Solana wallets
- Seamless transaction signing
- Mobile wallet compatibility

## Development Phases

The project is developed in phases. See [PHASES.md](./PHASES.md) for detailed roadmap:

- ✅ **Phase 1**: Project foundation and setup
- 🚧 **Phase 2**: Smart contract core development
- 📋 **Phase 3**: Frontend user interface
- 📋 **Phase 4**: Advanced features and optimization

## Contributing

We welcome contributions to SocialTipping! Here's how to get involved:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/amazing-feature`)
3. **Make your changes** following our coding standards
4. **Run tests** (`pnpm run anchor:test` and `pnpm run lint`)
5. **Submit a pull request**

Please read our coding standards and ensure all tests pass before submitting.

## Security

SocialTipping prioritizes security:

- **Audited Smart Contracts**: All programs undergo thorough security review
- **Type Safety**: Full TypeScript implementation prevents common errors
- **Environment Separation**: Clear separation between development, testing, and production
- **Best Practices**: Following Solana and Anchor security guidelines

## License

This project is open source and available under the [MIT License](LICENSE).

## Documentation

- [Phase 1 Setup Documentation](./PHASE1.md) - Complete setup and architecture guide
- [Project Specification](./PROJECT.md) - Detailed project requirements
- [Development Phases](./PHASES.md) - Full development roadmap

## Support

If you need help or have questions:

- Check the documentation files in this repository
- Review the Phase 1 setup guide for development environment issues
- Open an issue for bugs or feature requests
