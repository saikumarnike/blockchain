pragma solidity ^0.5.16;

contract Election{
    // Model a Candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    // Store Candidates
    // Fetch Candidate
    mapping(uint=>Candidate) public candidates;
    // Store Candidates Count
    uint public candidatesCount;

    constructor() public{
        addCandidate("sai");
        addCandidate("charan");

    }

    function addCandidate(string memory _name) private{
        candidatesCount++;
        //console.log(candidatesCount);
        candidates[candidatesCount] = Candidate (candidatesCount,_name,0);
        
    }
       
    
}
