# Moonbeam Smart Contract Deployment Guide

This guide walks you through deploying a smart contract on the Moonbeam Alpha testnet using popular development tools and MetaMask.

## Prerequisites

- MetaMask wallet extension installed
- Basic understanding of Solidity and smart contracts
- Node.js and npm installed

## Step 1: Choose Your Development Environment

Select one of the following blockchain development platforms:

- **Remix IDE** (Browser-based, beginner-friendly)
- **Truffle** (Command-line development framework)
- **Hardhat** (Modern development environment)

For this guide, we'll focus on Remix IDE for simplicity.

## Step 2: Create Your Smart Contract

1. Create a new folder called `contracts`
2. Inside the `contracts` folder, create a new file called `Token.sol`

### Important Note About Solidity Decimals

⚠️ **Critical**: Solidity does not have decimal numbers. Instead, it uses very large integers.

To represent decimal values:
- To add 50 tokens: `50 × 10^18`
- To add 1 token: `1 × 10^18`
- This accounts for 18 decimal places (standard for most tokens)

Example:
```solidity
// To transfer 50 tokens
uint256 amount = 50 * 10**18;
```

## Step 3: Set Up Moonbeam Testnet

1. Navigate to [Moonbeam Developer Docs](https://docs.moonbeam.network/)
2. Go to **Build** → **Developer Docs**
3. Click **Connect Wallet**
4. Select **Moonbeam Alpha Testnet**
5. Connect your MetaMask wallet when prompted

## Step 4: Get Testnet Tokens

1. Go to the **Faucet** section
2. Enter your MetaMask wallet address
3. Request testnet tokens (DEV tokens for Moonbeam Alpha)
4. Wait for the transaction to complete

## Step 5: Configure MetaMask for Moonbeam

Add Moonbeam Alpha testnet to MetaMask:

- **Network Name**: Moonbeam Alpha
- **RPC URL**: `https://rpc.api.moonbase.moonbeam.network`
- **Chain ID**: `1287`
- **Currency Symbol**: `DEV`
- **Block Explorer**: `https://moonbase.moonscan.io/`

## Step 6: Deploy Your Smart Contract

### Using Remix IDE:

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Upload your `Token.sol` file
3. Compile your contract
4. Go to **Deploy & Run Transactions** tab
5. In the **Environment** dropdown, select **Injected Provider - MetaMask**
6. Ensure you're connected to Moonbeam Alpha testnet
7. Select the account that has DEV tokens for gas fees
8. Click **Deploy**
9. Confirm the transaction in MetaMask

## Step 7: Interact with Deployed Contract

After successful deployment:

1. Your contract will appear under **Deployed Contracts**
2. You can now interact with contract functions
3. Use the interface to transfer tokens or call other functions

## Step 8: Add Token to MetaMask

To view your custom token in MetaMask:

1. Ensure MetaMask is set to Moonbeam Alpha network
2. Go to MetaMask → **Import Tokens**
3. Enter your deployed contract address
4. Token symbol and decimals should auto-populate
5. Click **Add Custom Token**

## Troubleshooting

### Common Issues:

- **Transaction Failed**: Ensure you have enough DEV tokens for gas fees
- **Contract Not Deploying**: Check for compilation errors in your Solidity code
- **MetaMask Not Connecting**: Make sure you're on the correct network
- **Token Not Showing**: Verify the contract address and network selection

### Gas Fees:

- Always keep some DEV tokens in your wallet for transaction fees
- Gas fees vary based on network congestion
- Test with small amounts first

## Best Practices

1. **Test Thoroughly**: Always test on testnet before mainnet deployment
2. **Security Audit**: Have your contract audited for production use
3. **Gas Optimization**: Optimize your contract to minimize gas costs
4. **Backup**: Keep backups of your contract code and deployment details

## Additional Resources

- [Moonbeam Documentation](https://docs.moonbeam.network/)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [Remix IDE Tutorial](https://remix-ide.readthedocs.io/)
- [MetaMask Guide](https://metamask.io/faqs/)

## Support

If you encounter issues:
- Check the Moonbeam Discord community
- Review the official documentation
- Ensure all prerequisites are met

---

**Note**: This guide is for testnet deployment only. For mainnet deployment, use proper security practices and thorough testing.