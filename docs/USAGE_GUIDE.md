# Usage Guide

## After Purchase

Once you purchase the full package, you'll receive:

1. **Full Source Code** (`Vesting.sol`, `MockToken.sol`)
2. **Deployment Scripts** (Hardhat compatible)
3. **Comprehensive Test Suite**
4. **Setup Instructions**

## Basic Usage Pattern

1. Deploy the vesting contract with your parameters
2. Transfer tokens to the vesting contract address
3. Beneficiary calls `release()` when tokens are vested

## Example Integration

```javascript
// After deploying the contract
await vestingContract.release();
const available = await vestingContract.releasableAmount();