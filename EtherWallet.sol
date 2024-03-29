//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.3;

contract EtherWallet{
    address payable public owner;

    constructor(){
        owner=payable(msg.sender);
    }

    receive() external payable{}

    function withdraw(uint _amount) external{
        require(msg.sender==owner, "caller is npt owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns(uint ){
        return address(this).balance;

    }
}
