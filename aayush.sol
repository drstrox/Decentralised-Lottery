
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Lottery {
    address public admin;
    address payable[] public contestants;
    address payable winner;
    bool public isComplete;
    bool public claimed;
    
constructor(){
    admin=msg.sender;
    isComplete=false;
    claimed=false;
}

modifier onlyAdmin(){
    require(msg.sender==admin);
    _;
}

function getAdmin() public view returns (address){
    return admin;
}
function getWinner() public view returns (address){
    return winner;
}

function enter() public payable{
    require(msg.value >= 1 ether);
    require(!isComplete);
    contestants.push(payable(msg.sender));
}

function pickWinner() public onlyAdmin{
    require(contestants.length>0);
    require(!isComplete);
    uint index=random()%contestants.length;
    contestants[index].transfer(address(this).balance);
    isComplete=true;
    claimed=true;
}
function random() public view returns (uint){
    return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp, contestants)));
}
function getContestants() public view returns (address payable[] memory){
    return contestants;
}

}
