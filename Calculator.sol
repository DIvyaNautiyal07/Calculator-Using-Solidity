//SPDX-License-Identifier: MIT

//Importing Strings library for uint=>string conversion
import "@openzeppelin/contracts/utils/Strings.sol";

pragma solidity ^0.8.7;

contract Calculator {
    using Strings for uint256;

    //adds two int256 and returns their sum 
    function add(int256 _num1, int256 _num2) external pure returns (int256)
    {
        return _num1 + _num2;
    }

    //subtracts two int256 and returns the result 
    function subtract(int256 _num1, int256 _num2) external pure returns (int256)
    {
        return _num1 - _num2;
    }

    //multiplies two int256 and returns their product 
    function multiply(int256 _num1, int256 _num2) external pure returns (int256)
    {
        return _num1 * _num2;
    }

    //divides two int256 and returns the result with decimals in string format 
    function divide(uint256 _num1, uint256 _num2) external pure returns (string memory)
    {
        //represents the decimal places
        uint256 factor = 1000;

        uint256 quotient = _num1 / _num2;
        uint256 remainder = ((_num1 * factor) / _num2) % factor;

        //converts the number into string format
        string memory result = string(abi.encodePacked(quotient.toString(), ".", remainder.toString()));
        return result;
    }
}
