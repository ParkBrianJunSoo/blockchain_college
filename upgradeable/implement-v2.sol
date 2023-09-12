// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract ImplementV1 {
    address public implementation;
    uint public x;
    uint public y;
    uint public snowflake;

    constructor(uint initialX, uint initialY){
        x = initialX;
        y = initialY;
    }

    function inc() external {
        x += 1;
    }

    function dec() external {
        x -= 1;
    }

    function add() external returns(uint) {
        snowflake = x + y;
        return snowflake;
    }
}