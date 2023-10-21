// Write a function that adds two matrices returns the result. 
// To keep things simple the array sizes will be fixed sizes of 
// 2x3 (uint256[2][3]). 
// Take a look at Wikipedia if you need help 
// understanding matrix addition. Your solution should implement the 
// following interface:

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Isolution1 {
    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure returns (uint256, uint256, uint256, uint256, uint256, uint256);
}

contract Foo is Isolution1 {
    
    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure override returns (uint256, uint256, uint256, uint256, uint256, uint256) {
        uint256 a = x[0][0] + y[0][0];
        uint256 b = x[0][1] + y[0][1];
        uint256 c = x[1][0] + y[1][0];
        uint256 d = x[1][1] + y[1][1];
        uint256 e = x[2][0] + y[2][0];
        uint256 f = x[2][1] + y[2][1];
        
        return (a, b, c, d, e, f);
    }
}
