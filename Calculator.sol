//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Calculator{
    function add(int _num1, int _num2) public pure returns(int){
        return _num1 + _num2;
    }
    function subtract(int _num1, int _num2) public pure returns(int){
        return _num1  - _num2;
    }
    function multiply(int _num1, int _num2) public pure returns(int){
        return _num1  * _num2;
    }

}