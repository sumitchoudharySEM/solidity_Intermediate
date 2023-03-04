// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

contract ExampleContract {
    uint256 public value;

    function setValue(uint256 newValue) public {
        require(newValue > value, "New value must be greater than current value");
        value = newValue;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a && c >= b);
        return c;
    }

    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }

    function fail() public pure {
        revert("This function always fails");
    }
}
