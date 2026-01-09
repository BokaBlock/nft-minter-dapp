// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleNFT {
    string public name = "SimpleNFT";
    string public symbol = "SNFT";
    uint public tokenCounter = 0;
    
    mapping(uint => address) public tokenOwner;
    mapping(address => uint) public balanceOf;
    
    function mint() public {
        tokenCounter++;
        uint newTokenId = tokenCounter;
        tokenOwner[newTokenId] = msg.sender;
        balanceOf[msg.sender]++;
    }
}
