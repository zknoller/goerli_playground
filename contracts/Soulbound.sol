// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract Soulbound {
    uint public unlockTime;
    address payable public owner;
    mapping(address => string) public soulInfo;
    string public z;

    event Mint(uint256 indexed tokenId, address indexed soulAddress, uint256 indexed soulId);

    constructor(uint _unlockTime) payable {
        require(
            block.timestamp < _unlockTime,
            "Unlock time should be in the future"
        );

        unlockTime = _unlockTime;
        owner = payable(msg.sender);
    }
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
