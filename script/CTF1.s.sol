// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Foo} from "../src/CTF1.sol";
import "forge-std/console.sol"; 

contract CtfDeploy is Script {

    function setUp() public {}

    function run() public {
        // get .env variables
        
        uint privateKey = vm.envUint("PRIVATE_KEY");
        address account = vm.addr(privateKey);

        
        console.log("Account", account);

        vm.startBroadcast();
        // deploy contract
        // Foo foo = new Foo();  

        vm.stopBroadcast();
    }
}


// To Deploy and Run script just add private key with no double quotes
// forge create --rpc-url https://sepolia.gateway.pokt.network/v1/lb/ae75c2b1 --private-key 123456jiopjoihw4twt45tyhevsssgeh5u454 src/CTF1.sol:Foo

// SUBMITTED:
// https://sepolia.etherscan.io/tx/0xbb9ff532a3445a128367f094070c7df8a8f1114e902fbc2db84b1d3f93c76795