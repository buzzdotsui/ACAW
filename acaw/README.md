# 🌍 ACAW — Autonomous, Composable, Always-On World

ACAW is a decentralized, always-on simulation world built on **Sui**.
It combines strategy mechanics, blockchain composability, and simulation systems
to create a persistent, autonomous environment that evolves even when you’re not online.

## 🚀 Vision
ACAW aims to build a self-sustaining, composable simulation layer on the Sui blockchain:
- Always running on-chain, independent of players
- Composable with other decentralized applications (games, DAOs, metaverses)
- Fully autonomous — world logic and state live on Sui

## 🛠 Features
- 🌐 Persistent World — the simulation continues 24/7 on Sui  
- 🏗 Composable Systems — modules (economy, politics, strategy) plug into the same world  
- ⚔️ Strategy Gameplay — players influence the world through decisions, governance, and coordination  
- 🔒 On-Chain Trust — all mechanics are transparent and verifiable  
- 🤖 Autonomous Agents — NPCs and systems act without constant player input

## ⚡ Quick Start

### Prerequisites
- Node.js v18+
- Sui CLI (`sui`)
- Git

### Clone (if you haven't already)
```bash
git clone https://github.com/buzzdotsui/ACAW.git
cd ACAW

cd contracts
sui move build
sui client publish

cd ../frontend
npm install
npm run dev

ACAW/
 ├── contracts/        # Move modules
 ├── frontend/         # Web UI (React/Tailwind)
 ├── backend/          # indexer, relayer, bots
 ├── docs/             # docs, guides
 ├── LICENSE
 ├── README.md
 └── .gitignore

