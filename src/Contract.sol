// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Contract {
    constructor() {
        struct Quiz {
            string question;
            string[] options;
            uint256 correctAnswerIndex;
        }

        Quiz public quiz;

        mapping(address => bool) public hasAnswered;
        mapping(address => bool) public isCorrect;

        constructor(string memory _question, string[] memory _options, uint256 _correctAnswerIndex) {
            quiz = Quiz(_question, _options, _correctAnswerIndex);
        }

    }
}

