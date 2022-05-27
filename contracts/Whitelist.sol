// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Whitelist {

    // Max number of whitelisted addresses allowed
    uint8 public maxWhitelistedAddresses;

    // Create a mapping of whitelistedAddress
    // If an address is whitelisted, set to true, false by default
    mapping(address => bool) public whitelistedAddresses;

    // Keep track of number of whitelisted address
    uint8 public numAddressesWhitelisted;

    // Initialize contract with a max number of whitelisted addresses
    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    /*
        Add the address of the sender to the whitelist
    */
    function addAddressToWhitelist() public {
        // Check if user has already been whitelisted
        require(!whitelistedAddresses[msg.sender], "addAddressToWhitelist Error: Sender has already been whitelisted");

        // Check if maxWhitelistedAddresses has been reached
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "addAddressToWhitelist Error: Max number of whitelisted addresses already reached");

        // Add the address of the message sender to whitelistedAddresses
        whitelistedAddresses[msg.sender] = true;

        // Increase the number of whitelisted addresses
        numAddressesWhitelisted += 1;
    }
}