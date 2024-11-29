// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("Degen", "DGN") {}

    // Minting tokens: Only the owner can mint tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Redeeming tokens: Users redeem tokens for in-game rewards
    function redeem(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient token balance");
        _burn(msg.sender, amount); // Burn redeemed tokens
        // Additional logic for rewarding the user can be added here (e.g., in-game item tracking)
    }

    // User-friendly function to check the caller's balance
    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    // Burn tokens: Anyone can burn their own tokens
    function burnTokens(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient token balance");
        _burn(msg.sender, amount);
    }

   
}
