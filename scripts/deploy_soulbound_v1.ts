import { ethers, upgrades } from "hardhat";

async function main() {
    
  const address = "0xf7f60a60fb78590e368216dc9aebedd1d96bbb9d";

  const Soulbound = await ethers.getContractFactory("Soulbound");

  const soulbound_v1 = await upgrades.deployProxy(Soulbound, [address], {
    initializer: "initialize",
  });

  await soulbound_v1.deployed();

  console.log("deployed to ", soulbound_v1.address)

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
