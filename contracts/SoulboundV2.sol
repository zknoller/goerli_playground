// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "./Soulbound.sol";

contract SoulboundV2 is Soulbound {

    function latestVersion() external pure returns (uint32) {
        return 2;
    }


}