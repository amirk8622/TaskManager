// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

struct Task {
    uint id;
    string title;
    string description;
    bool isCompleted;
    address owner;
    bool isDeleted;
}

event TaskAdded(uint indexed id, string title, address owner);
event TaskUpdated(uint256 indexed id, string title, address updatedBy);
event TaskDeleted(uint256 indexed id, address deletedBy);
event TaskRestored(uint256 indexed id, address restoredBy);
event TaskCompleted(uint256 indexed id, address completedBy);
