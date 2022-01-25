const { ethers }  = require("hardhat");

async function main() {
  const Faucet = await hre.ethers.getContractFactory("Faucet");
  const faucet = await Faucet.deploy({
    value: ethers.utils.parseUnits(".2", "ether")
  });
  await faucet.deployed();

  console.log(faucet.address);
}

main();