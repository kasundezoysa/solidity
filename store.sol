pragma solidity ^0.4.0;

contract store {
    uint storedData;
    
    constructor() public{
     storedData=0;
    }
    
    function set(uint x) public {
        storedData = x;
    }
    
    function get() public constant returns (uint retVal) {
        return storedData;
    }
}
