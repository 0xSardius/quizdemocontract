// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Contract {

        struct Quiz {
            string question;
            string[] options;
            uint256 correctAnswerIndex;
        }

        Quiz public quiz;

        mapping(address => bool) public hasAnswered;
        mapping(address => bool) public isCorrect;

        constructor(string memory _question, string[] memory _options, uint256 _correctAnswerIndex) {
            // require that quiz has at least two options
            require(_options.length >= 2, "Must have at least 2 options");
            require(_correctAnswerIndex < _options.length, "Correct answer index must be less than the number of options")

            quiz = Quiz({
                question: _question,
                options: _options,
                correctAnswerIndex: _correctAnswerIndex
            });
        }

        function answerQuestion(uint256 _answerIndex) public {
            require(!hasAnswered[msg.sender], "You have already answered the question");
            require(_answerIndex < quiz.options.length, "Answer index must be less than the number of options");

            hasAnswered[msg.sender] = true;
            if[_answerIndex == quiz.correctAnswerIndex] {
                isCorrect[msg.sender] = true;
            }
        }

    }

