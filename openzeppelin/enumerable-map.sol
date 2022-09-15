// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";

contract ExampleEnumerableMap {
    // Importamos la librería
    using EnumerableMap for EnumerableMap.UintToAddressMap;

    // Declaramos un Map de datos
    EnumerableMap.UintToAddressMap private myMap;
}
