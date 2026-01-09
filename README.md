#  NFT Minter DApp

A sleek, modern NFT minting DApp built on Ethereum Sepolia Testnet. Mint your own ERC-721 tokens with a beautiful dark-themed interface.

![NFT Minter](https://img.shields.io/badge/Solidity-0.8.0-blue)
![Web3.js](https://img.shields.io/badge/Web3.js-1.10-orange)
![License](https://img.shields.io/badge/License-MIT-green)

##  Live Demo

**Contract Address (Sepolia):** `0xbd2A7c9387434BAcdEF05f0226ea9FE67fF47F5e`

[View on Etherscan](https://sepolia.etherscan.io/address/0xbd2A7c9387434BAcdEF05f0226ea9FE67fF47F5e)

##  Features

-  **Mint NFTs** with one click
-  **Real-time Stats** - View your balance and total minted supply
-  **Track Token IDs** - See exactly which NFTs you own
-  **MetaMask Integration** - Seamless wallet connection
-  **Loading Animations** - Smooth minting experience with spinner
-  **Etherscan Links** - Direct links to contract and transactions
-  **Responsive Design** - Works on desktop and mobile
-  **Dark Theme** - Beautiful gradient background with neon accents

##  Tech Stack

**Smart Contract:**
- Solidity ^0.8.0
- Simplified ERC-721 implementation
- Gas optimized minting

**Frontend:**
- HTML5/CSS3
- Vanilla JavaScript (ES6+)
- Web3.js v1.10
- Dark gradient UI with red/pink accents
- Hover effects and animations

##  Smart Contract
```solidity
// SimpleNFT.sol
contract SimpleNFT {
    string public name = "SimpleNFT";
    string public symbol = "SNFT";
    uint public tokenCounter = 0;
    
    mapping(uint => address) public tokenOwner;
    mapping(address => uint) public balanceOf;
    
    function mint() public {
        tokenCounter++;
        uint newTokenId = tokenCounter;
        tokenOwner[newTokenId] = msg.sender;
        balanceOf[msg.sender]++;
    }
}
```

**Key Functions:**
- `mint()` - Mint a new NFT (gas: ~50,000)
- `balanceOf(address)` - Check NFT balance
- `tokenCounter()` - View total minted
- `tokenOwner(uint)` - Get owner of specific token

##  Quick Start

### Prerequisites
- MetaMask browser extension
- Sepolia testnet ETH ([Get from faucet](https://sepoliafaucet.com))

### Run Locally

1. **Clone the repository**
```bash
git clone https://github.com/YOUR_USERNAME/nft-minter-dapp.git
cd nft-minter-dapp
```

2. **Start local server**
```bash
# Python 3
python -m http.server 8000

# Or Python 2
python -m SimpleHTTPServer 8000

# Or use Live Server extension in VS Code
```

3. **Open in browser**
```
http://localhost:8000/nft-minter.html
```

4. **Connect & Mint**
- Switch MetaMask to Sepolia Testnet
- Click "Connect MetaMask"
- Click " Mint NFT"
- Confirm transaction
- See your NFT count update!

##  Project Structure
```
nft-minter-dapp/
├── SimpleNFT.sol           # Smart contract
├── nft-minter.html         # Frontend DApp
└── README.md               # Documentation
```

##  How It Works

1. **Connect Wallet**
   - MetaMask detects Sepolia network
   - Displays your connected address

2. **Mint NFT**
   - Click mint button
   - Confirm transaction (gas: ~50k)
   - Wait for blockchain confirmation (~15 sec)

3. **View Your NFTs**
   - Stats cards show your balance
   - Token IDs section lists all your minted tokens
   - Links to view on Etherscan

##  UI Features

**Dark Theme:**
- Background: Purple/blue gradient (`#0f0c29` → `#302b63` → `#24243e`)
- Accent: Red/pink gradient (`#ff0844` → `#ffb199`)
- Hover effects: Glow + scale animations

**Interactive Elements:**
- Stat cards scale up on hover
- Loading spinner during mint
- Transaction links to Etherscan
- Responsive 2-column layout

## 🔗 Links

- **Contract:** [Sepolia Etherscan](https://sepolia.etherscan.io/address/0xbd2A7c9387434BAcdEF05f0226ea9FE67fF47F5e)
- **Faucet:** [Get Sepolia ETH](https://sepoliafaucet.com)
- **Remix IDE:** [Deploy Your Own](https://remix.ethereum.org)

## Learning Objectives

This project demonstrates:
-  ERC-721 NFT basics (minting, ownership)
-  Web3.js integration with MetaMask
-  Smart contract deployment on testnet
-  Frontend-blockchain interaction
-  Etherscan transaction verification
-  Modern CSS (gradients, animations, flexbox/grid)

##  License

MIT License - free to use for learning and personal projects!

##  Developer

Built as part of blockchain development learning journey.

**Learning Path:**
- Day 1-13: TodoList DApp (CRUD operations)
- Day 14-15: NFT Minter DApp (ERC-721 basics) ← You are here

---

**Status:**  Live on Sepolia Testnet  
**Last Updated:** January 2026

** Star this repo if you found it helpful!**
