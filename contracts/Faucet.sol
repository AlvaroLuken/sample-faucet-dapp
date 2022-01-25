//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Faucet {

  address public owner;

  constructor() payable {
    owner = msg.sender;
  }

  function withdraw(uint _amount) public payable {
    // max withdrawal is .1 eth
    require(_amount <= 100000000000000000);
    (bool sent, ) = msg.sender.call{value: _amount}("");
    require(sent);
  }

  function deposit() public payable {}
}