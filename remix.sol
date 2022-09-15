// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// https://github.com/NomicFoundation/hardhat/blob/main/packages/hardhat-core/console.sol
import "hardhat/console.sol";

contract Console {

    function printInConsole() public {
        console.log(":D");
    }
}