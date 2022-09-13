// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Functions {
    /**
        function (<parameter types>) {internal|external} [pure|view|payable] [returns (<return types>)]

        - pure function declares that no state variable will be changed or read.
        - view function declares that no state will be changed.
        - payable functions can be converted to non-payable functions
    */

    /**
        Pure
    */
    function sumPureFunction(uint256 number1, uint256 number2)
        public
        pure
        returns (uint256)
    {
        uint256 sum = number1 + number2;
        return sum;
    }

    /**
        View
    */

    // declare a state variable
    uint256 uintStateVar = 10;

    function sumViewFunction(uint256 number1, uint256 number2)
        public
        view
        returns (uint256 sum)
    {
        sum = uintStateVar + number1 + number2;
    }

    /**
        Payable
    */
    function transfer(address payable _to, uint256 _amount) public payable {
        // logic
    }

    /**
        Default functions

                            send Ether
                                |
                            msg.data is empty?
                                /       \
                            yes        no
                            /           \
                    receive() exists?     fallback()
                            /     \
                        yes        no
                        /           \
                    receive()      fallback()
    */

    receive() external payable {}

    fallback() external payable {}
}
