import { ethers } from "hardhat";

async function main() {


  const Soulbound = await ethers.getContractFactory("Soulbound");
  const SoulboundContract = await Soulbound.deploy("");

  await SoulboundContract.deployed();

  console.log("SoulboundContract deployed to:", SoulboundContract.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
