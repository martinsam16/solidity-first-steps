// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Immutable {
    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        // MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
        // MY_UINT = 1;
    }
}