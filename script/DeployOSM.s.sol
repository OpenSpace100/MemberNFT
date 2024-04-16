// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/osnft.sol";

contract DeployOSs1 is Script {
    function run() external {
        vm.startBroadcast();
        address initialOwner = msg.sender;
        OSMembers osm = new OSMembers(initialOwner);
        vm.stopBroadcast();
    }
}