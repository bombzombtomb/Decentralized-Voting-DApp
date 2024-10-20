# Decentralized Voting DApp

A simple decentralized voting application that allows users to create polls, vote, and view results using Ethereum smart contracts deployed on the Base blockchain.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Create a Poll](#create-a-poll)
  - [Vote on a Poll](#vote-on-a-poll)
  - [View Poll Results](#view-poll-results)
- [Smart Contract Deployment](#smart-contract-deployment)
  - [Base Network Setup](#base-network-setup)
  - [Deploy the Contract](#deploy-the-contract)
- [Contributing](#contributing)
- [License](#license)

## Overview
This project is a decentralized application (DApp) that leverages smart contracts on the Base blockchain to create and manage voting polls. Users can:
- Create a poll with multiple options.
- Vote on active polls.
- View the results in real time.

The application is built with a React.js frontend and Solidity smart contracts to ensure transparency and security in the voting process.

## Features
- **Decentralized Voting System**: Fully decentralized voting with immutable results.
- **Create Polls**: Users can create polls with custom questions and multiple voting options.
- **Vote in Polls**: Users can cast votes on active polls.
- **View Results**: Real-time results are available immediately after voting.
- **Base Blockchain**: Deployed on the Base testnet to ensure scalability and security.

## Tech Stack
- **Frontend**: React.js
- **Blockchain**: Ethereum (Base testnet)
- **Smart Contract**: Solidity
- **Web3 Integration**: Ethers.js

## Setup

### Prerequisites
- Node.js (v14 or higher)
- MetaMask wallet extension installed in your browser
- Base testnet setup in MetaMask (see [Base Network Setup](#base-network-setup))

### Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/bombzombtomb/Decentralized-Voting-DApp.git
    cd voting-dapp
    ```

2. Install dependencies:
    ```bash
    npm install
    ```

3. Start the React development server:
    ```bash
    npm start
    ```

4. Open your browser and connect MetaMask to interact with the application.

## Usage

### Create a Poll
1. Enter a poll question and options in the provided form.
2. Click **Create Poll** to deploy the poll to the blockchain.
3. Your poll will be displayed on the main page with its options.

### Vote on a Poll
1. Select the poll you want to vote in.
2. Choose an option and submit your vote.
3. Your vote will be registered on the blockchain.

### View Poll Results
1. Navigate to the poll results section to see real-time vote counts for each option.

## Smart Contract Deployment

### Base Network Setup
To interact with the Base testnet, you'll need to configure MetaMask:
1. Open MetaMask and click on the network selector dropdown.
2. Select **Add Network** and enter the following details:
    - **Network Name**: Base Goerli Testnet
    - **RPC URL**: `https://base-goerli.blockapi.org/v1/rpc`
    - **Chain ID**: `84531`
    - **Currency Symbol**: ETH

3. After adding the network, you'll be able to interact with the DApp on the Base testnet.

### Deploy the Contract
1. Use Remix IDE or Hardhat to deploy the Solidity smart contract.
2. Copy the deployed contract address and update the contract address in the React app.

```javascript
const contractAddress = "YOUR_CONTRACT_ADDRESS";
