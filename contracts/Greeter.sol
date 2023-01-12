pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable {

    string private __greeting = "Hello World!";
    address private _owner;

    constructor() {
        _owner = msg.sender;
    }
//
//    modifier onlyOwner(){
//        require(
//            msg.sender == _owner,
//            "Ownable: caller is not the owner"
//        );
//        _;
//    }

    function greet() external view returns (string memory){
        return __greeting;
    }

    function setGreeting(string calldata greeting) onlyOwner public {
        __greeting = greeting;
    }
//
//    function owner() public view returns (address){
//        return _owner;
//    }

}
