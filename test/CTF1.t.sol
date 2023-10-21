// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Foo} from "../src/CTF1.sol";

contract SolutionTest is Test {
    
    Foo public ctf1;

    uint256[2][3] public matrix1 = [[1, 2], [3, 4], [5, 6]]; 
    uint256[2][3] public matrix2 = [[6, 5], [4, 3], [2, 1]];
    uint256 public result;  // Changed to uint256 from uint256[2][3]

    function setUp() public {
        ctf1 = new Foo();
    }

    function test_MatrixAddition() public {
        result = ctf1.solution(matrix1, matrix2);
        assertEq(result, 7, "The sum of values at position [1][1] should be 7");
    }
}
