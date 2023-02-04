//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Counter{
    uint public count;
    uint public u;
    int public i;
    bool public b;
    address public add;
    bytes32 public b32;
    uint public constant MY_Number=8000; ///this reduces the amount of gas used in a contract
    



    function Inc() external {
        count++;
    
    }

    function Dec() external {
        count--;
        
    }
}
