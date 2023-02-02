// SPDX-License-Identifier: MIT
pragma solidity =0.8.15;

contract Ontropy {

    mapping(address => bytes32) public hashes;
    mapping(address => uint) public values;

    // Where n is the number of possible outcomes
    uint public n;

    contract(uint n_) {
        n = n_;
    }

    function setHash(bytes32 _hash) public {
        hashes = _hash;
    }

    function reveal(uint c, bytes32 salt) public {
        require(hashes[msg.sender] == keccak256(abi.encodePacked(c)), "Invalid hash");
        require(c =< n, "Invalid value");
        
        values[msg.sender] = c;
    }
}