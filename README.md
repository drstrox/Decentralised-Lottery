# Lottery Smart Contract

## Overview
This Solidity smart contract implements a simple lottery system. Users can enter the lottery by sending at least 1 ether, and the administrator of the contract can pick a random winner. The winner receives the entire balance of the contract.

## Contract Details
- `admin`: The address of the administrator of the contract, who has the ability to pick a winner.
- `contestants`: An array of addresses representing the participants in the lottery.
- `winner`: The address of the winner of the lottery.
- `isComplete`: A boolean flag indicating if the lottery has been completed.
- `claimed`: A boolean flag indicating if the winner has claimed the prize.

## Functions
- `enter()`: Allows a user to enter the lottery by sending at least 1 ether.
- `pickWinner()`: Allows the administrator to pick a random winner from the list of contestants and transfer the entire balance of the contract to the winner.
- `getAdmin()`: Returns the address of the administrator.
- `getWinner()`: Returns the address of the winner.
- `random()`: Generates a pseudo-random number based on the block difficulty, timestamp, and contestants list.
- `getContestants()`: Returns an array of addresses representing the contestants.

## Usage
1. Deploy the contract to a compatible Ethereum network.
2. Use the `enter()` function to participate in the lottery by sending at least 1 ether.
3. Once enough participants have entered, use the `pickWinner()` function to select a winner.

## writing, compiling and deploying the contract
Open Remix IDE in your browser.
Write the Smart Contract.

Compile and Deploy:
Select the Solidity file containing your lottery smart contract.
Compile the contract by clicking on the "Solidity Compiler" tab and then clicking on "Compile."
Deploy the contract by clicking on the "Deploy & Run Transactions" tab.


