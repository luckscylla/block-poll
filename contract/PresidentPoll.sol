pragma solidity ^0.5.0;

import "./VoteToken.sol";

contract PresidentPoll {
	address payable admin;
	VoteToken public tokenContract;
	
	string[] public candidates;
	mapping(address => uint8) public voteOf;
	mapping(uint8 => uint256) public pollOf;
	
	constructor(VoteToken _tokenContract) public {
		admin = msg.sender;
		tokenContract = _tokenContract;
	}

	function vote(uint8 _candidate) public {
		require(_candidate < candidates.length);
		// TODO: transfer token from sender to this contract ?
		require(tokenContract.balanceOf(msg.sender) > 0, "vote token is required");
		if (voteOf[msg.sender] > 0) {
			pollOf[voteOf[msg.sender]] --;
		}
		voteOf[msg.sender] = _candidate;
		pollOf[_candidate] ++;
	}
	
	function candidateCount() public view returns(uint256) {
		return candidates.length;
	}
	
	function addCandidate(string memory _profile) public {
		require(msg.sender == admin);
		candidates.push(_profile);
	}

	function endPoll() public {
		require(msg.sender == admin);
		// withdraw tokens
		require(tokenContract.transfer(admin, tokenContract.balanceOf(address(this))));
		// withdraw eth
		selfdestruct(admin);
	}
}