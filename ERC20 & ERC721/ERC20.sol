// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.5.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.5.0/access/Ownable.sol";

contract SkiCoins is ERC20, Ownable {
    uint256 public rate = 1000 * 10 ** decimals();
    constructor() ERC20("SkiCoins", "SKC") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function buyToken(address receiver) public payable returns(bool){
        require(msg.value > 0, "InSufficientBalance");
        uint amount = msg.value * 1000 * 18 ** decimals();
        _mint(receiver, amount);
        return true;
    
    }
}   
