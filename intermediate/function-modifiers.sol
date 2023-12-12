// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract FunctionModifier {
    // We will use these variables to demonstrate how to use
    // modifiers.
    address private owner;
    uint private x;
    bool private locked;

    constructor() {
        // Set the transaction sender as the owner of the contract.
        owner = msg.sender;
        x = 10;
    }

    function getX() public view returns(uint){
        return x;
    }

    function retrieveContractOwner() public view returns(address){
        return owner;
    }

    // Modifier to check that the caller is the owner of
    // the contract.
    modifier onlyOwner() {
        // try - catch(Exception)
        require(msg.sender == owner, "Not owner");
        // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.
        _;
    }

    // 0x00000000000
    // Modifiers can take inputs. This modifier checks that the
    // address passed in is not the zero address.
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _newOwner) public validAddress(_newOwner) onlyOwner {
        owner = _newOwner;
    }

    // Modifiers can be called before and / or after a function.
    // This modifier prevents a function from being called while
    // it is still executing.
    modifier noReentrancy() {
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}