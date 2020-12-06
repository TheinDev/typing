//
//  Challenge.swift
//  typing
//
//  Created by Min Aung Hein on 11/13/20.
//  Copyright © 2020 Min Aung Hein. All rights reserved.
//

import Foundation

enum ChallengeType {
    case Beginner
    case Intermediate
    case Advance
}

class Challenge {
    var id:Int
    var name:String 
    var typeofChallenge:ChallengeType = ChallengeType.Beginner
   
    
    private var _minimumChoice:Int = 3
    var minimumChoice:Int {
        get {
            return _minimumChoice
        }
        
        set {
            //Consider the setted value to store or not
            _minimumChoice = newValue >= 3 ? newValue : 3
        }
    }
    
    private var _categories = [TypingCategory]()
    var categories :[TypingCategory]{
        return _categories
    }
    
    private var _selectedCategories = [TypingCategory]()
    var selectedCategories :[TypingCategory]{
        return _selectedCategories
    }
    
    
    
    init(id:Int,name:String) {
        self.id = id
        self.name = name
    }
    
    func addCategories(category:TypingCategory){
        self._categories.append(category)
    }
    
    func addToSelectedCategories(category:TypingCategory){
        self._selectedCategories.append(category)
    }
    
    func removeFromSelectedCategories(category:TypingCategory){
        //TODO
    }
    
    var isChoice:Bool {
        return _selectedCategories.count < minimumChoice
    }
    
    var words:[String]{
        let words = self._selectedCategories.map { (tc) -> [String] in
            return tc.words
        }.first
        return words ?? []
    }
}




