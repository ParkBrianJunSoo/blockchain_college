// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Math {
    using SafeMath for uint256;

    uint public a = 5;
    uint public b = 5;
    uint public c = 7;
    uint public d = 0;

    function Add() public view returns(uint) {
        return a.add(b);
    }

    function Sub() public view returns(uint) {
        return a.sub(b);
    }

    function Sub2() public view returns(uint) {
        return a.sub(c); // revert
    }

    function Mul() public view returns(uint) {
        return a.mul(c);
    }

    function Div() public view returns(uint) {
        return a.div(b);
    }

    function Div2() public view returns(uint) {
        return a.div(d); // revert
    }

    // function add() public view returns(uint) {
    //     return
    // }

}