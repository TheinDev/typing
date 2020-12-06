//
//  TypeCategory.swift
//  typing
//
//  Created by Min Aung Hein on 11/13/20.
//  Copyright © 2020 Min Aung Hein. All rights reserved.
//

import Foundation

class TypingCategory{
    var id:Int
    var name:String
    var words:[String] = []
    
    init(id:Int , name:String) {
        self.id = id
        self.name = name
    }
    
    func addWords(text:String){
        words.append(text)
    }
    func addWords(text:[String]){
        words.append(contentsOf: text)
    }
    func addWords(text: String...){
        words.append(contentsOf: text)
    }
}
