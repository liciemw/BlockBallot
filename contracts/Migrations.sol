pragma solidity ^0.4.25;

contract Migrations {
    address public owner;
    uint public last_completed_migration;

    // Constructor function
    function Migrations() public {
        owner = msg.sender;
    }

    modifier restricted() {
        require(msg.sender == owner);
        _;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }
}
