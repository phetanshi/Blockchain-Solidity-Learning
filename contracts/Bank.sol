// SPDX-License-Identifier: MIT

pragma solidity >=0.8.8 <0.9.0;

contract Bank
{
    int bal;

    /**
     * @dev Set contract deployer as owner
     */
    constructor()
    {
        bal = 1;
    }

    function GetBal() view public returns(int)
    {
        return bal;
    }

    function Withdraw(int amount) public
    {
        bal = bal - amount;
    }

    function Deposit(int amt) public
    {
        bal = bal + amt;
    }
}