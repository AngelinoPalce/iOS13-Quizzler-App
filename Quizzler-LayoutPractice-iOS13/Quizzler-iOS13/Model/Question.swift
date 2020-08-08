//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Angelino Palce on 8/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let question : String
    let answer : [String]
    let correct_answer : String
    
    
    
    init(q : String, a: [String], correctAnswer: String){
        question = q
        answer = a
        correct_answer = correctAnswer
        
    }

}
