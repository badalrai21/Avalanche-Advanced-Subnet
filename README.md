# Avalanche-Advanced-Subnet

## Project Overview

This project demonstrates how to create a ```custom blockchain``` and ```virtual machine (VM)``` using the ```Avalanche HyperSDK```. The ```HyperSDK``` enables developers to have full control over the rules, features, and functionality of their ```blockchain```. This project focuses on building a blockchain that allows users to ```mint```, ```transfer``` tokens, and optionally manage an order book for asset trading.

The ```HyperSDK is currently in its ```alpha``` phase, so the features and functionality may change in the future. This project uses an example ```token VM``` that has been tested and is guaranteed to be maintained in the upcoming releases.

## Description

### Key Features
#### ➛ ```Custom Virtual Machine```:
 Define a custom VM with fully controllable blockchain logic.  
  
#### ➛ ```Token Minting```:
Create and distribute custom tokens.  
  
#### ➛ ```Token Transfers  ```:
Allow users to transfer tokens securely between accounts..      
  
#### ➛ ```Checking Token Balance```:
Players can check their token balance at any time to keep track of their items and resources.    
  
#### ➛ ```Order Book (Optional)```:
Implement a traditional order book for trading assets.

#### ➛ ```Custom Blockchain Deployment```:
Tailor the blockchain to meet your specific startup needs, such as specific tokenomics or user behavior.


## Getting Started

### Prerequisites

To get started, make sure you have the following tools installed:
➛ [@Go(Golang)](https://go.dev/doc/install) - Version 1.18 or higher  
➛ [@Git](https://git-scm.com/)

## Project Setup

#### 1. Clone the Repository
Start by cloning this repository to your local machine.
```
git clone https://github.com/your-username/hyper-sdk-custom-subnet.git
cd hyper-sdk-custom-subnet
```
#### 2. Install Dependencies
Ensure that the project dependencies are properly installed and up-to-date using the Go Modules system.
```
go mod tidy
```
This command normalizes all dependencies and installs the required packages based on the go.mod file.

### Configuring Your Custom Subnet
#### 3. Modify Project Constants
Open the consts/consts.go file and configure the constants related to your custom token, such as its name, symbol, and initial supply. This will define the properties of the token on your custom blockchain.
```
package consts

const (
    TokenName        = "MyCustomToken"   // Name of your custom token
    TokenSymbol      = "MCT"             // Token symbol (e.g., MCT for MyCustomToken)
    InitialSupply    = 1000000           // The initial supply of tokens minted at genesis
)
```
You can adjust these values according to your tokenomics and desired initial configuration.

#### 4. Register Token Actions
In the registry/registry.go file, make sure to register the necessary actions for creating and minting tokens on your custom subnet.
```
package registry

func init() {
    // Register custom actions for token management
    registerAction("Create_Asset", createAsset)
    registerAction("Mint_Asset", mintAsset)
}
```
This step is crucial for enabling custom blockchain logic that handles creating new assets and minting tokens to users.

### Running the Subnet Locally

#### 5. Configure Go Path
Before running the virtual machine, ensure that Go is available in your terminal's path. You can do this by exporting the Go path temporarily:
```
export PATH=$PATH:$(go env GOPATH)/bin
```
Alternatively, if Go is installed at /usr/local/go, use:

```
export PATH=$PATH:/usr/local/go/bin
```
This step is necessary to ensure that the Go compiler and tools are accessible for running the HyperSDK commands.

#### 6. Run the VM
To run the virtual machine locally, execute the following command in your terminal:
```
MODE="run-single" ./scripts/run.sh
```
This script launches the custom subnet locally. It spins up a local Avalanche Network Runner instance that enables the execution of the custom VM on your machine.

#### 7. Build the Subnet
Once the VM is running, you need to build the project using:

```
./scripts/build.sh
```
If you encounter permission issues, you can run the script using bash:
```bash ./scripts/run.sh
bash ./scripts/build.sh
```

#### 8. Import Demo Keys
The project includes a demo private key for testing purposes. You can import this key using the following commands:

```
./build/token-cli key import demo.pk
./build/token-cli chain import-anr
```
The demo private key allows you to interact with the local blockchain, enabling actions like token minting and transfers.

#### Interacting with the Blockchain
Once the subnet is up and running, you can use the demos included in the project repository to interact with your custom blockchain.
##### Minting Tokens
You can mint tokens to a specific account using the mint action:

```
./build/token-cli mint <recipient_address> <amount>
```

##### Transferring Tokens
You can transfer tokens from one address to another using:

```
./build/token-cli transfer <recipient_address> <amount>
```

##### Custom Interactions
Feel free to explore additional interactions provided by the HyperSDK demo scripts or implement your custom logic using the available APIs.

#### Stopping the Local Network
When you are done testing or interacting with your custom blockchain, stop the local Avalanche network by running the following command:

```
killall avalanche-network-runner
```

### Useful Commands
Here’s a quick reference for the essential commands used throughout this project:

##### ➛ Clone the Repository:

```
git clone https://github.com/your-username/hyper-sdk-custom-subnet.git
```

##### ➛ Install Dependencies:

```
go mod tidy
```

##### ➛ Run the Local Network:

```
MODE="run-single" ./scripts/run.sh
```

##### ➛ Build the Project:

```
./scripts/build.sh
```

##### ➛ Import Demo Private Key:

```
./build/token-cli key import demo.pk
```

##### ➛ Stop the Local Network:

```
killall avalanche-network-runner
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

  
#### Community  
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


##### Copyright (c) 2024 badalrai21

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
