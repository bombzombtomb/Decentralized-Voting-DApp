// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Poll {
        string question;
        string[] options;
        mapping(uint => uint) votes;
        address[] voters;
        bool isActive;
    }

    Poll[] public polls;

    function createPoll(string memory _question, string[] memory _options) public {
        Poll storage newPoll = polls.push();
        newPoll.question = _question;
        newPoll.options = _options;
        newPoll.isActive = true;
    }

    function vote(uint pollId, uint optionId) public {
        require(pollId < polls.length, "Poll does not exist");
        require(optionId < polls[pollId].options.length, "Invalid option");
        require(polls[pollId].isActive, "Poll is not active");

        Poll storage poll = polls[pollId];

        for (uint i = 0; i < poll.voters.length; i++) {
            require(poll.voters[i] != msg.sender, "You have already voted");
        }

        poll.votes[optionId]++;
        poll.voters.push(msg.sender);
    }

    function getVotes(uint pollId, uint optionId) public view returns (uint) {
        require(pollId < polls.length, "Poll does not exist");
        require(optionId < polls[pollId].options.length, "Invalid option");

        return polls[pollId].votes[optionId];
    }

    function closePoll(uint pollId) public {
        require(pollId < polls.length, "Poll does not exist");
        polls[pollId].isActive = false;
    }
}
