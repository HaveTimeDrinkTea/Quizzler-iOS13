//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Pei WANG on 20/08/2023.
//  PW Note: it is a convention to name the swift file creating the structure the same name as the structure
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
