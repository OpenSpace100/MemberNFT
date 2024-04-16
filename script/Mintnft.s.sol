// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/OSMembers.sol";

contract Mintnft is Script {
    function run(address OSMAddress, address to, string memory tokenURI) external {
        vm.startBroadcast(); 
        OSMembers OSMContract = OSMembers(OSMAddress);
        OSMContract.safeMint(to, tokenURI);
        vm.stopBroadcast(); 
    }
}