// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ownable{   //Contract is just like class in c++
    address public owner;   //owner variable store the address of the owner and which can be seen by everyone.

    constructor(){
        owner= msg.sender;  //msg.sender store the address who deploy the smart contract
    }

    modifier onlyOwner(){       //modifier are used to change or restrict the behavior of a function in a smart contract. You can use a modifier to automatically check a condition prior to executing the function.
        require(msg.sender==owner,"Not owner"); //check the conditions
        _;  //if condition true then next part will execute
    }

    function setOwner(address _newOwner) public onlyOwner{  //onlyOwner can access this function
        require(_newOwner!=address(0), "Invalid Address");
        owner=_newOwner;
    }

    function onlyOwnerCanAccess() public onlyOwner{
        //code
    }

    function anyOneCanAccess() public{
        //code
    }
}
