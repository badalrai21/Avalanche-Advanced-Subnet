# Avalanche-Advanced-Subnet

This project implements a decentralized lottery system on the Avalanche blockchain using a custom ERC20 token called `LotteryToken (LTK)`. The system allows participants to enter the lottery by depositing tokens, randomly selects a winner, and transfers the prize pool to the winner at the end of the lottery.

## Features
- **Custom ERC20 Token**: The project uses `LotteryToken (LTK)` as the currency for lottery participation.
- **LotteryVault Contract**: Manages participants, deposits, and prize distribution for the lottery.
- **Owner Control**: The contract owner can end the lottery, select a winner, and restart the lottery.
- **Random Winner Selection**: Uses a simple random number generator to pick a winner from the participants.

## Project Components
1. **ERC20 Token (`LotteryToken`)**: A standard ERC20-compliant token contract used for deposits.
2. **LotteryVault**: The core contract where participants deposit tokens to enter the lottery.

## Prerequisites
To run this project, you will need the following tools and technologies:
- **Ubuntu**: Used to set up the development environment and Avalanche subnet.
- **Avalanche Subnet**: A custom EVM-based subnet for executing the smart contracts.
- **Remix IDE**: Used for compiling and deploying the smart contracts.
- **Metamask**: Wallet for interacting with the Avalanche subnet and smart contracts.

## Getting Started

### 1. Setting Up Avalanche Subnet on Ubuntu
Follow the steps below to set up the Avalanche subnet on your Ubuntu system:

#### Install `avalanchego` (Avalanche Node)
```bash
wget https://github.com/ava-labs/avalanchego/releases/download/v1.9.3/avalanchego-linux-amd64-v1.9.3.tar.gz
tar -xvf avalanchego-linux-amd64-v1.9.3.tar.gz
cd avalanchego-v1.9.3
./avalanchego
```
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
