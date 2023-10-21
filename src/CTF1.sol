// Write a function that adds two matrices returns the result. 
// To keep things simple the array sizes will be fixed sizes of 
// 2x3 (uint256[2][3]). 
// Take a look at Wikipedia if you need help 
// understanding matrix addition. Your solution should implement the 
// following interface:



// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface Isolution1 {
    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure returns (uint256);
}



contract Foo is Isolution1 {
    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure override returns (uint256) {
        return x[1][1] + y[1][1];
    }
}
