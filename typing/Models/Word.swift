//
//  Word.swift
//  typing
//
//  Created by Min Aung Hein on 11/13/20.
//  Copyright © 2020 Min Aung Hein. All rights reserved.
//

import Foundation
class Word {
    
    var text:String
    var userText:String = ""
    var currentIndex = 0
    var isCompleted:Bool {
        return text.trimmingCharacters(in:CharacterSet.init(charactersIn: " ")) == userText.trimmingCharacters(in: CharacterSet.init(charactersIn: " "))
    }
    
    var charCount:Int {
        return text.count
    }
    
    init(text:String) {
        self.text = text
    }
}
