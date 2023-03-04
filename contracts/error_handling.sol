// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

contract ExampleContract {

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a && c >= b);
        return c;
    }

    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Cannot divide by zero as require sayes");
        return a / b;
    }

    function fail(uint256 a, uint256 b) public pure returns (uint256){
        if(b == 0){
            revert("Cannot divide by zero as revert sayes");
        }
        return a / b;
    }
}
