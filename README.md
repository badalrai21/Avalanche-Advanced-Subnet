# Avalanche-Advanced-Subnet

# LotteryVault with ERC20 LotteryToken

This project implements a decentralized lottery system on the Ethereum blockchain, where users can participate in a lottery using ERC20-compliant tokens. The smart contract handles deposits, selects a winner randomly, and transfers the total deposited tokens to the winner when the lottery ends.

## Features
- **ERC20 Token (`LotteryToken`)**: A custom ERC20 token called `LotteryToken (LTK)` that participants use to join the lottery.
- **LotteryVault Contract**: A contract that allows users to deposit tokens as lottery tickets. A winner is selected randomly when the lottery ends.
- **Owner Control**: The contract owner can start, end, and reset the lottery as needed.
- **Random Winner Selection**: A random function is used to choose a winner from the list of participants.

## Contracts

### 1. **LotteryVault**
The `LotteryVault` contract is the core of the lottery system where participants deposit `LotteryToken (LTK)` tokens as tickets to enter the lottery.

- **Functions**:
  - `deposit()`: Allows participants to deposit tokens and enter the lottery.
  - `endLottery()`: Allows the contract owner to end the lottery, select a winner, and transfer the prize.
  - `restartLottery()`: Allows the owner to restart the lottery with a new ticket price.
  - `getParticipantBalance()`: Allows anyone to view the balance of a particular participant.
  - `random()`: Generates a random number used to select the winner.

### 2. **ERC20 (LotteryToken)**
The `ERC20` contract defines the `LotteryToken (LTK)` used in the lottery. It follows the ERC20 standard.

- **Functions**:
  - `transfer()`: Transfers tokens from the sender to a recipient.
  - `approve()`: Approves a spender to transfer tokens on behalf of the owner.
  - `transferFrom()`: Transfers tokens on behalf of the owner using an allowance.
  - `mint()`: Creates new tokens and adds them to the specified address.
  - `burn()`: Burns tokens, reducing the supply.

## Installation & Setup

### Prerequisites
- **Node.js**: Make sure you have [Node.js](https://nodejs.org/en/) installed.
- **npm**: Install npm, the Node.js package manager.
- **Hardhat**: Hardhat is the development environment used to compile and deploy smart contracts.

To install Hardhat, run:
```bash
npm install --save-dev hardhat

## Help
If you encounter any issues or have questions about this project, there are several resources available to assist you:

### Documentation
[@Avalanche HyperSDK](https://github.com/ava-labs/hypersdk)
[@Go Programming Language](https://go.dev/)
[@Avalanche Network Runner](https://github.com/ava-labs/avalanche-network-runner)

### Contact
If you need further assistance, feel free to reach out:

Email: [@BadalRai](badalrai242@gmail.com)  
GitHub Issues: Report issues or suggest enhancements on our GitHub Issues page.  

  
## Community  
Join the community to discuss the project and get help from other user:
LinekdIn: [@BadalRai](https://www.linkedin.com/in/badal-rai)  
Discord: Join our Discord Server [@NO2](https://discord.gg/Dnw4ZjEg)    
I hope this information helps you get the most out of our Blockchain Message Manager Smart Contract project. If you have any feedback or suggestions, please let us know!

## Authors

Badal Kumar Rai                                                                                                                        
[@BadalRai](https://www.linkedin.com/in/badal-rai)

## License

This project is licensed under the Apache 2.0 License - see the LICENSE.md file for details    
> **Note**: This content is proprietary and confidential. Unauthorized copying, modification, distribution, or use of this content is strictly prohibited without explicit permission from the owner.


#### Copyright (c) 2024 badalrai21

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
