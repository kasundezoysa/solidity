pragma solidity ^0.4.25;

contract myBank {
    mapping (address=> uint) private balances;
    address owner;

 constructor() public{
     owner=msg.sender;
 }
 
 function deposit() public payable{
     balances[msg.sender]+=msg.value;
 }
 
 function withdraw(uint amount) public {
  if (balances[msg.sender]>amount)
   balances[msg.sender]-=amount;
 }
 
 function transfer(address recipient,uint amount) public{
   if (balances[msg.sender]>amount){
     balances[msg.sender]-=amount;
     balances[recipient]+=amount;
   }
 }
 
 function claim() public {
   if (balances[owner]>100){
     balances[owner]-=10;
     balances[msg.sender]+=10;
   }
 }

 function balance() public constant returns(uint){
   return balances[msg.sender];    
 }
}
