pragma solidity ^0.4.24;

import "./ERC223.sol";
import "./MinterRole.sol";

/**
 * @title ERC20Mintable
 * @dev ERC20 minting logic
 */
contract ERC223Mintable is ERC223, MinterRole {
    /**
     * @dev Function to mint tokens
     * @param to The address that will receive the minted tokens.
     * @param value The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address to, uint256 value) public onlyMinter returns (bool) {
        _mint(to, value);
        return true;
    }
}