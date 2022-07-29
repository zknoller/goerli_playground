import { ethers, upgrades } from "hardhat";

async function main() {
    
  // Not the actual proxy address
  const proxyAddress = "0xf7f60a60fb78590e368216dc9aebedd1d96bbb9d";

  const SoulboundV2 = await ethers.getContractFactory("SoulboundV2");

  const soulbound_v2 = await upgrades.upgradeProxy(proxyAddress, SoulboundV2);

  console.log("upgraded, address is ", soulbound_v2.address)

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
