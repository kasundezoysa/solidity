pragma solidity >=0.4.22 <0.6.0;
contract store {
    uint storedData;
    
    constructor() public{
     storedData=0;
    }
    
    function set(uint x) public {
        storedData = x;
    }
    
    function get() public view returns (uint retVal) {
        return storedData;
    }
}
