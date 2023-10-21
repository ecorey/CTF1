// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Foo} from "../src/CTF1.sol"; 

contract CtfDeploy is Script {

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        Foo foo = new Foo();  
        vm.stopBroadcast();
    }
}