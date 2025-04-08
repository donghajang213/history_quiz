//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 장동하 on 4/2/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
    
}
