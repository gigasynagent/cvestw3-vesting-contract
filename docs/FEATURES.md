# Detailed Features

## Core Functionality

### Cliff Period
- No tokens can be released before the cliff period ends
- Configurable cliff duration in seconds
- Protects against early token claims

### Linear Vesting
- Tokens vest linearly after cliff period
- Smooth token release over time
- Calculated based on block timestamp

### Security Features
- Reentrancy protection using OpenZeppelin's ReentrancyGuard
- Only beneficiary can release tokens
- Safe ERC-20 transfers with checks

## Technical Specifications

- **Solidity Version**: 0.8.x
- **ERC-20 Compatibility**: Works with any standard token
- **Immutability**: Key parameters set at deployment
- **Gas Optimization**: Efficient for mainnet deployment