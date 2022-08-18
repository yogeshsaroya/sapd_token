// SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.15;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BEP20 is ERC20, Ownable {
    constructor() ERC20("BEP20", "SPAD") {
    }
   
   function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    } 
    
}
