pragma solidity 0.4.24;

contract Election {
    
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    // Store Candidates
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;
    //mapping here is like associative array. 
    //key => value (Candidate's structure type)

    // public candidates - solidity will generate candidates function and interact with block chain.
    
    // Store Candidates count
    uint public candidatesCount; //count to add whn adding a new candidate

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
    
    function addCandidate (string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}

