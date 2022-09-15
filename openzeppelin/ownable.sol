// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol
import "@openzeppelin/contracts/access/Ownable.sol";

contract MiContrato is Ownable {

    function functionParaElOwner() public onlyOwner {}

    function functionAccesiblePorTodos() public {}
}