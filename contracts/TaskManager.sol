// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Struct.sol";

contract TaskManager {
    uint public taskId;
    mapping(uint => Task) public tasks;

    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyTaskOwner(uint taskID) {
        require(
            tasks[taskID].owner == msg.sender,
            "TaskManager: Action restricted to task owner"
        );
        _;
    }

    function AddTask(
        string calldata _title,
        string memory _description
    ) public {
        _addTask(_title, _description);

        emit TaskAdded(taskId, _title, msg.sender);
    }

    function _addTask(
        string calldata _title,
        string memory _description
    ) private {
        unchecked {
            taskId++;
        }
        tasks[taskId] = Task(
            taskId,
            _title,
            _description,
            false,
            msg.sender,
            false
        );
    }

    function editTask(
        uint taskid,
        string memory newTitle,
        string memory newDescription
    ) external onlyTaskOwner(taskid) {
        Task storage task = tasks[taskid];
        task.title = newTitle;
        task.description = newDescription;

        emit TaskUpdated(taskid, newTitle, msg.sender);
    }

    function removeTask(uint taskId) external onlyTaskOwner(taskId) {
        tasks[taskId].isDeleted = true;
        emit TaskDeleted(taskId, msg.sender);
    }

    function restoreTask(uint256 taskId) external onlyTaskOwner(taskId) {
        require(tasks[taskId].isDeleted, "Task is not deleted");
        tasks[taskId].isDeleted = false;
        emit TaskRestored(taskId, msg.sender);
    }

    function markTaskCompleted(uint256 taskId) external onlyTaskOwner(taskId) {
        require(!tasks[taskId].isCompleted, "Task already completed");
        tasks[taskId].isCompleted = true;
        emit TaskCompleted(taskId, msg.sender);
    }

    function getTask(uint256 _taskID) external view returns (Task memory) {
        return tasks[_taskID];
    }
}
