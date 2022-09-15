// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract ExampleEnumerableSet {
    // Importamos la librería
    using EnumerableSet for EnumerableSet.AddressSet;

    // Declaramos un Set de datos
    EnumerableSet.AddressSet private mySet;
}
