//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Angelino Palce on 8/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Brain{
    
    let test = [
        Question(q: "How many calories can you burn when you bang your head against a wall?", a: ["200", "150", "75"], correctAnswer: "150"),
        Question(q: "___________ is the fear of being tickled by feathers", a: ["Claustrophobia", "Pteronophobia", "Acrophobia"], correctAnswer: "Pteronophobia"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    
    ]
    
    var testPortion = 0
    var answerPortion = 0
    var score = 0
    
    
    
    
    mutating func checkAnswer(_ Answer : String) -> Bool {
        if (Answer == test[testPortion].correct_answer){
            score += 1
            return true
        }
        else{
            return false
        
        }
    }
    
    func getQuestion() -> String{
        return test[testPortion].question
    }
    
    mutating func getChoicesA() -> String{
        return test[testPortion].answer[0]
    }
    mutating func getChoicesB() -> String{
        return test[testPortion].answer[1]
    }
    mutating func getChoicesC() -> String{
        return test[testPortion].answer[2]
    }
    
    mutating func nextQuestion(){
        
        if testPortion + 1 < test.count{
            testPortion += 1
        
        }
        else{
            testPortion = 0
            score = 0
        } 
    }
    
    func getScore() -> Int{
        return score
    }
    
    func progress() -> Float{
        return (Float(testPortion + 1) / Float(test.count))
    }
    
    
}
