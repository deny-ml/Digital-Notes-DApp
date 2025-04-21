# Digital Notes DApp

A decentralized application (DApp) built on the Sepolia Testnet for securely storing and retrieving notes on the Ethereum blockchain. This project demonstrates a robust Web3 solution with transaction hash persistence using a two-transaction approach.

## Features
- **Add Notes**: Users can add notes stored permanently on the blockchain.
- **Transaction Hash Persistence**: Uses two transactions (`addNote` and `updateNoteTxHash`) to store the transaction hash on-chain, ensuring it persists after page refresh.
- **Retrieve Notes**: Displays notes with content, owner, timestamp, and transaction hash as Etherscan links.
- **Futuristic UI**: Bright color palette (#f0f4f8 to #d9e2ec) with a Web3 network animation.
- **Real-Time Updates**: Listens to `NoteAdded` events for instant UI updates.
- **LinkedIn Integration**: Links to my professional profile.

## Tech Stack
- **Smart Contract**: Solidity, Remix IDE
- **Frontend**: HTML, CSS, JavaScript, Web3.js
- **Blockchain**: Sepolia Testnet, MetaMask
- **Tools**: Etherscan, GitHub Pages, Visual Studio Code

## Setup
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/deny-ml/Digital-Notes-DApp.git