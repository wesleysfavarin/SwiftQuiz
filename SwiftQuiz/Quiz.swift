//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by mac on 28/01/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

class Quiz {
 
    let question: String
    let options: [String]
    let correctedAnswer: String
    
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctedAnswer
    }
    
    deinit {
        print("Liberou quiz da memoria")
    }
}
