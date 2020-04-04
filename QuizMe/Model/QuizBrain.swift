//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "4 x 4 = ", a: ["12", "16", "21"], correctAnswer: "16"),
        Question(q: "12 + 39 = ", a: ["50", "41", "51"], correctAnswer: "51"),
        Question(q: "8 x 9 = ", a: ["64", "90", "72"], correctAnswer: "72"),
        Question(q: "21 ÷ 3 = ", a: ["63", "12", "7"], correctAnswer: "7"),
        Question(q: "53 - 43 = ", a: ["10", "33", "3"], correctAnswer: "10"),
        Question(q: "9 + 70 = ", a: ["89", "34", "79"], correctAnswer: "79"),
        Question(q: "56 ÷ 7 = ", a: ["8", "7", "9"], correctAnswer: "8"),
        Question(q: "12 x 3 = ", a: ["28", "36", "41"], correctAnswer: "36"),
        Question(q: "65 - 32 = ", a: ["83", "24", "33"], correctAnswer: "33"),
        Question(q: "6 + 9 = ", a: ["15", "9", "12"], correctAnswer: "15"),
        Question(q: "7 x 4 = ", a: ["21", "28", "36"], correctAnswer: "28"),
        Question(q: "76 + 23 = ", a: ["91", "83", "99"], correctAnswer: "99"),
        Question(q: "1 x 32 = ", a: ["31", "33", "32"], correctAnswer: "32"),
        Question(q: "48 ÷ 12 = ", a: ["4", "16", "8"], correctAnswer: "4"),
        Question(q: "82 - 49 = ", a: ["33", "63", "27"], correctAnswer: "33"),
        Question(q: "40 + 20 = ", a: ["50", "40", "60"], correctAnswer: "60"),
        Question(q: "33 ÷ 3 = ", a: ["15", "11", "9"], correctAnswer: "11"),
        Question(q: "6 x 5 = ", a: ["30", "36", "29"], correctAnswer: "30"),
        Question(q: "60 - 58 = ", a: ["34", "75", "2"], correctAnswer: "2"),
        Question(q: "46 + 46 = ", a: ["29", "99", "92"], correctAnswer: "92"),
        Question(q: "15 ÷ 1 = ", a: ["15", "1", "0"], correctAnswer: "92")
    ]
    
    func getQuestionText() -> String {
       
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here. 
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

