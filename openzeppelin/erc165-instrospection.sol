// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";

contract VerifyInterfaces {

    // Verificamos si el contrato cumple con IERC20
    function isERC20(address addr) public view returns (bool) {
        return ERC165Checker.supportsInterface(addr, type(IERC20).interfaceId);
    }

    // Verificamos si el contrato cumple con IERC721
    function isERC721(address addr) public view returns (bool) {
        return ERC165Checker.supportsInterface(addr, type(IERC721).interfaceId);
    }

    // Verificamos si el contrato cumple con IERC165
    function isERC165(address addr) public view returns (bool) {
        return ERC165Checker.supportsInterface(addr, type(IERC165).interfaceId);
    }
}

contract MyTokenERC20 is ERC20, ERC165 {

    constructor() ERC20("Mi Token ERC20", "MTF") {
        _mint(msg.sender, 1000);
    }

    // Sobreescribimos supportsInterface() para que otro contrato pueda validar la interface IERC20
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165) returns (bool) {
        return 
            interfaceId == type(IERC20).interfaceId ||
            super.supportsInterface(interfaceId);
    }
}