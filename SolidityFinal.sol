// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
REQUIREMENTS
    
Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
Your contract will have a mapping of addresses to balances (address => uint)
You will have a mint function that takes two parameters: an address and a value. 
 The function then increases the total supply by that number and increases the balance 
 of the “sender” address by that amount
Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
 It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
 and from the balance of the “sender”.
Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
 to the amount that is supposed to be burned.
*/

contract SolidityFinal {
    // Public variables 
    string public coinName = "CustomToken";
    string public coinSymbol = "CCT";
    uint256 public totalCoins = 0;

    // Mapping to track balances
    mapping(address => uint256) public userBalances;

    // Function to add coins (Mint)
    function addCoins(address recipient, uint256 amount) public {
        totalCoins += amount;
        userBalances[recipient] += amount;
    }

    // Function to remove coins (Burn)
    function removeCoins(address holder, uint256 amount) public {
        require(userBalances[holder] >= amount, "Insufficient balance to burn");
        totalCoins -= amount;
        userBalances[holder] -= amount;
    }
}