# SolidityFinal Smart Contract

The `SolidityFinal` contract is a simple cryptocurrency system in Solidity for managing a custom token, **CustomCoin (CCT)**, with minting, burning, and balance tracking features.

## Features
- **Token Details**: Name: CustomCoin, Symbol: CCT, Total Supply.
- **Balances Mapping**: Tracks token ownership by wallet address.
- **Minting**: Adds new tokens to an address.
- **Burning**: Destroys tokens and reduces the total supply.

## Functions

### `addCoins(address recipient, uint256 amount)`
- Mints tokens and updates the recipient's balance.

### `removeCoins(address holder, uint256 amount)`
- Burns tokens, reducing the total supply and holder's balance.

## How It Works
- **Minting**: Adds tokens to the total supply and an address.
- **Burning**: Removes tokens and reduces the holder's balance.
- **Mapping**: Keeps track of balances via `userBalances`.

## Getting Started
1. Deploy in any Ethereum environment (e.g., Remix, Hardhat, Truffle).
2. Use `addCoins` and `removeCoins` to manage the token supply and balances.
