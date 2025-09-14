# SocialTipping

## Project Overview

**Project Name:** SocialTipping
**Category:** Web3 / Payments / Social Tipping

### Problem Statement

Sending cryptocurrency on Solana is difficult for new users because it requires copying long, complex wallet addresses (e.g., `Fg6PaFpoGXkYsidMpWTK6...`). This creates friction and discourages adoption, especially for small transactions like tips or donations to creators.

SocialTipping makes crypto payments as easy as sending a Venmo or Twitter tip: a user can type a username, and the funds are sent to the correct wallet.

---

## Solution

SocialTipping is a small service that maps **usernames → Solana wallet addresses**.

**Key Features:**

1. **Register a Username:** Users claim a unique username (e.g., `@alice`) and link it to their Solana wallet.
2. **Send a Tip:** Anyone can type `@username` and send SOL or SPL tokens without needing the full wallet address.
3. **Safe & Lightweight:** Only allows simple deposits and transfers.
4. **Open Source:** Code is public so other developers can integrate this service.

**Optional Future Features:**

* Integration with Twitch, Discord, or Telegram usernames.
* Microtransactions only (for tips or small payments).

---

## User Flow

**1. Registering a Username**

1. User connects wallet (Phantom, Solflare, or Coinbase).
2. User chooses a username (`@alice`) and submits.
3. A Solana smart contract records the mapping:

   ```
   username → wallet_address
   ```
4. Confirmation displayed on UI.

**2. Sending a Tip**

1. Sender enters a username (`@alice`) and amount of SOL/SPL token.
2. Frontend fetches the mapped wallet address from the smart contract.
3. Transaction is signed by sender’s wallet and sent to Solana blockchain.
4. Receiver sees the tip in their wallet.

**3. Optional Frontend Features**

* Search usernames.
* Display simple history of received tips.
* Tooltip or warning if a username is already registered.

---

## Technical Stack

| Component          | Technology                                                  |
| ------------------ | ----------------------------------------------------------- |
| Blockchain         | Solana Devnet / Testnet                                     |
| Smart Contract     | Anchor (Rust)                                               |
| Wallet Integration | Solana Wallet Adapter (Phantom, Solflare, etc.)             |
| Frontend           | Next.js + React + TypeScript                                |
| Optional Database  | Prisma + PostgreSQL (for faster username lookup or history) |
| Deployment         | Vercel / Netlify (frontend) + Solana Devnet (program)       |

**Smart Contract Functions:**

1. `registerUsername(username: String, wallet: PubKey)` → Creates mapping on-chain.
2. `sendTip(username: String, amount: u64)` → Resolves wallet, transfers SOL/SPL token.
3. `updateUsername(username: String)` → Optional: update mapping (with restrictions).

**Security Considerations:**

* Username uniqueness enforced on-chain.
* Only wallet owner can update their username mapping.
* Minimal attack surface; no fund custody except passing through transaction.

---

## How to Run (Dev Mode)

```bash
# Clone repo
git clone https://github.com/<yourusername>/socialtipping.git
cd socialtipping

# Install dependencies
pnpm install

# Run frontend dev server
pnpm dev

# Run local test validator for Solana program
solana-test-validator

# Deploy Anchor program (devnet)
anchor deploy
```

---

## Demo Video / Screenshots

* \[Demo Video Link]
* \[Frontend Screenshots]

---

## Notes for Developers / AI Tools

* The project has **3 main components**: smart contract (Anchor), frontend (Next.js), optional database for history.
* All flows are **simple mappings and transactions** — ideal for AI code assistance tools to generate boilerplate code or test scripts.
* Focus is on **proof-of-work MVP**, not a full Solana Name Service replacement.

**Author / Contact:** Your Name
**GitHub:** [https://github.com/](https://github.com/)<yourusername>
