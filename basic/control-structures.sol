// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// No es recomendable usarlos pq son caros (gas)
contract ControlStructures {
    function loops() public {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint256 j;
        while (j < 10) {
            j++;
        }

        // do while loop
        do {
            j++;
        } while (j < 10);

        /**
        Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.
        For the reason above, while and do while loops are rarely used.
    */
    }

    function conditions() public {
        if (true) {
            //do something
        }
        
        if (true) {
            //do something
        } else {
            //do something
        }
    }
}
