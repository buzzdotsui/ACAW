# 🌍 ACAW — Autonomous, Composable, Always-On World

**ACAW** is a decentralized, always-on simulation world built on **Sui**.  
It combines strategy mechanics, blockchain composability, and autonomous systems to create a persistent environment that evolves even when you’re not online.

---

## 🚀 Vision
ACAW is building a self-sustaining, composable simulation layer on the Sui blockchain:

- ♾ **Always-On** — the world runs 24/7 on-chain, independent of players  
- 🧩 **Composable** — interoperates with games, DAOs, and metaverses  
- 🤖 **Autonomous** — agents and systems act without constant player input  
- 🔒 **On-Chain Trust** — transparent, verifiable world logic  

---

## ✨ Features
- 🌐 **Persistent World** — simulation never stops  
- 🏗 **Composable Systems** — economy, politics, and strategy modules plug into one shared world  
- ⚔️ **Strategy Gameplay** — players influence governance, trade, and conflicts  
- 🔒 **Blockchain Secured** — powered by Sui smart contracts  
- 🤝 **Player + Agent Ecosystem** — humans and NPCs co-exist, shaping the world  

---

## ⚡ Quick Start

### 📋 Prerequisites
- Node.js **v18+**
- [Sui CLI](https://docs.sui.io/)
- Git

### 🔽 Clone & Setup
```bash
# Clone the repo
git clone https://github.com/buzzdotsui/ACAW.git
cd ACAW

# Build & deploy contracts
cd contracts
sui move build
sui client publish

# Frontend
cd ../frontend
npm install
npm run dev

ACAW/
 ├── contracts/        # Move modules (Sui smart contracts)
 ├── frontend/         # Web UI (React + Tailwind)
 ├── backend/          # Indexer, relayer, autonomous agents
 ├── docs/             # Documentation & guides
 ├── LICENSE           # Open-source license
 ├── README.md         # This file
 └── .gitignore


👉 This will overwrite the old README with the polished one.

---

### 🔹 Step 2: Add LICENSE
Run this to create a **MIT License** file:

```bash
cat > LICENSE <<'LICENSE'
MIT License

Copyright (c) 2025 buzzdotsui

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
LICENSE 
