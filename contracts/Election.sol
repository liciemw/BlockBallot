// SPDX-License-Identifier: MIT
pragma solidity ^0.4.25;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Read/write candidates
    mapping(uint => Candidate) public candidates;

    // Store Candidates Count
    uint public candidatesCount;

    // Constructor function to initialize the contract
    function Election() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    // Function to add a candidate to the election
    function addCandidate(string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
