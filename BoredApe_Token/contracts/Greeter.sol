// Write a staking contract that accepts an erc20 token called
//boredApeToken(created by you, 18 decimal)

//When people stake brt, they get 10% of it per month
//provided they have staked for 3 days or more

//Important: Only BordeApes owners can use your contract

//BoredApe NFT: 0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    string private greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
