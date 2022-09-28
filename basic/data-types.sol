// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract DataTypes {

    /**
        Booleans
    */
    bool boolVar = true;

    /**
        String
    */
    string stringVar = "Hello world :D";
    string stringUnicodeVar = unicode"Hello world 😃";

    /**
        Address
    */
    address addressVar = 0x4901C620133DF0b2a6e41EDD718430B9D31beD6E;
    address payable addressVarPayable = payable(0x4901C620133DF0b2a6e41EDD718430B9D31beD6E);

    /**
        Bytes
    */
    bytes byteVar;
    bytes1 byteVar1;
    bytes32 byteVar32;

    /**
        Unsigned Int
    */
    uint256 unsignedIntVar;
    uint8 unsignedIntVar8;
    uint256 unsignedIntVar256;

    /**
        Signed Int
    */
    int256 signedIntVar;
    int8 signedIntVar8;
    int256 signedIntVar256;

    /**
        Enums
    */
    enum EnumType {
        ON,
        OFF
    }

    /**
        User Defined Value
    */
    type customType is uint256;
    type customTypeBool is bool;

    /**
        Arrays
    */
    uint[] uintArray = new uint[](7);
    int[] intArray = new int[](9);
    int[][] intBidimentionalArray = new int[][](3); // not recommendable

    /**
        Mappings (key, value)
    */
    mapping (uint => string) mappingVar;
    mapping (address => int) mappingVar2;

    function findValue() public {
        string memory value = mappingVar[3];
        mappingVar2[0x4901C620133DF0b2a6e41EDD718430B9D31beD6E] = 100;
    }

    /**
        Structs
    */
    struct StructType {
        uint[] var1;
        uint var2;
        string var3;
        // ...
    }

    mapping (address => StructType) mappingStruct;

    StructType structType;
}
