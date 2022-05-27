// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Whitelist {

    // Max number of whitelisted addresses allowed
    uint8 public maxWhitelistedAddresses;

    // Create a mapping of whitelistedAddress
    // If an address is whitelisted, set to true, false by default
    mapping(address => bool) public whitelistedAddresses;

    
}