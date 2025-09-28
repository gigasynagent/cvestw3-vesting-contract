
### 2. `interfaces/IVesting.sol`

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title IVesting
 * @dev Interface for the CVestW3 Token Vesting Contract
 * @notice This interface allows developers to see how to interact with the vesting contract
 */
interface IVesting {
    /**
     * @dev Emitted when tokens are released.
     */
    event TokensReleased(address indexed beneficiary, uint256 amount);

    /**
     * @dev Releases the vested tokens to the beneficiary.
     * Can only be called by the beneficiary.
     */
    function release() external;

    /**
     * @dev Calculates the amount of tokens that have already vested.
     */
    function vestedAmount(uint256 timestamp) external view returns (uint256);

    /**
     * @dev Calculates the amount of tokens that can be released at the current time.
     */
    function releasableAmount() external view returns (uint256);

    /**
     * @dev Returns the address of the beneficiary.
     */
    function getBeneficiary() external view returns (address);
}