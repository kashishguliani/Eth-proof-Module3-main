# MyToken ERC20 Smart Contract

MyToken is an ERC20 token smart contract written in Solidity. It allows for the creation and minting of a custom token on the Ethereum blockchain. The contract is based on the OpenZeppelin library, which provides a set of well-tested and secure smart contract components.

## Features

- Mintable: The token can be minted by the contract owner until minting is finished.
- Finish Minting: The contract owner can finish minting to prevent any further token creation.
- OpenZeppelin Integration: The contract inherits from the ERC20 standard of the OpenZeppelin library, ensuring compliance with the ERC20 specification and security best practices.

## Deployment

1. Prerequisites: Make sure you have Node.js, npm, and Truffle installed.

2. Clone the repository:


3. Install dependencies:


4. Compile the smart contract:


5. Deploy the smart contract:

Make sure you have a running Ethereum node (e.g., Ganache or a public network like Ropsten) configured in `truffle-config.js` or `truffle-config.json`.


Replace `<NETWORK_NAME>` with the target network where you want to deploy the token.

## Usage

1. Deploy the contract using the deployment steps mentioned above.

2. Interact with the deployed contract using your preferred Ethereum wallet or a tool like Remix.

3. As the owner of the contract, you can mint new tokens using the `mint` function, as long as the minting is not finished.

4. Call the `finishMinting` function to finish minting and prevent any further token creation.


