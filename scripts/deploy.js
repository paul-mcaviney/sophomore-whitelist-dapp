const { ethers } = require("hardhat");

async function main() {
    // Contract Factory in ethers is an abstraction to deploy smart contracts,
    const whitelistContract = await ethers.getContractFactory("Whitelist");

    // Deploy the contract and padd the constructor argument (10 max whitelists)
    const deployedWhitelistContract = await whitelistContract.deploy(10);

    // Wait for it to finish deploying
    await deployedWhitelistContract.deployed();

    // Print the address of the deployed contract
    console.log(
        "Whitelist Contract Successfully Deployed To:",
        deployedWhitelistContract.address
    );
}

// Call the main function and catch if there is an error
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });