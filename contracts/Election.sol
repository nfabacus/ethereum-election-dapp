pragma solidity ^0.4.2;

contract Election {
    // Store candidate
    // Read candidate
    string public candidate;
    // Constrcutor
    function Election () public {
        candidate = "Candidate 1";
    }
}