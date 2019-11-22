pragma solidity >=0.4.22 <0.6.0;

contract myBank {
    mapping (address=> uint) private balances;
    address owner;

 constructor() public{
     owner=msg.sender;
 }
 
 function deposit(uint amount) public{
     balances[msg.sender]+=amount;
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

 function balance() public view returns(uint){
   return balances[msg.sender];    
 }
}
