// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

// Import this file to use console.log
import "hardhat/console.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract Soulbound is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    uint public unlockTime;
    mapping(address => string) public soulInfo;
    string public z;
    address genesis;

    event Mint(uint256 indexed tokenId, address indexed soulAddress, uint256 indexed soulId);

    function initialize(address payable _genesis) public initializer {
        genesis = _genesis;
        __Ownable_init();
    } 

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function ownerOf(uint256 index) external view returns (address soulAddress, uint256 soulId) {


        return (msg.sender, 0);
    }
    function collectionUri() external pure returns (string memory collection) {

        return "ipfs://QmTy8w65yBXgyfG2ZBg5TrfB2hPjrDQH3RCQFJGkARStJb";
    }

    function tokenUri(uint256 soulId) external view returns (string memory soulUri) {

        return "ipfs://QmTy8w65yBXgyfG2ZBg5TrfB2hPjrDQH3RCQFJGkARStJb";
    }

    function metdataFormat() external pure returns (string memory format) {
        return "zknoller/0.1";
    }

}
