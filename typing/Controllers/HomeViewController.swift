//
//  HomeViewController.swift
//  typing
//
//  Created by Min Aung Hein on 11/13/20.
//  Copyright © 2020 Min Aung Hein. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK:Private Properties
    
    @IBAction func selectChanllence(_ sender: UIButton) {
    
    
    }
    private var challenges = [[Challenge]]()
    
    //MARK:IBOutlets
    
    //MARK:IBAction
    @IBAction func showChallenge(_ sender:UIButton){
        
        let challengeSB = UIStoryboard.init(name: "Challenge", bundle: nil)
        let challengeVC = challengeSB.instantiateViewController(withIdentifier :"challenge")
        
        if let nvCtrl = self.navigationController {
            nvCtrl.pushViewController(challengeVC, animated: true )
        }
    }
    
    //Public methods
    
    
    //MARK:Private Methods
    private func setup(){
        loadChallenges()
    }
    
    private func loadChallenges(){
        
        //Beginner 1
        let beginnerChallenge1 = Challenge(id: 1, name: "Beginner Challenges")
        beginnerChallenge1.typeofChallenge = .Beginner
        
        //TODO: beginner challenge categories
        let animalCategory = TypingCategory(id: 1, name: "Animals")
        animalCategory.addWords(text:  "Frog","Lion","Giraffee","bat","Turtle" )
        
        let transporationCategory = TypingCategory(id: 2, name: "Transporation")
        transporationCategory.addWords(text:  "Bus","Fire Engine","Submarine","Crane","Ferry" )
        
        let fruitCategory = TypingCategory(id: 2, name: "Fruits")
        fruitCategory.addWords(text:  "Apple","Banana","Cocoanut","Dragon Fruit","Egg Plant" )
        
        beginnerChallenge1.addCategories(category: animalCategory)
        beginnerChallenge1.addCategories(category: transporationCategory)
        beginnerChallenge1.addCategories(category: fruitCategory)
       //End of beginner challenge
        
        //Beginner 2
         let beginnerChallenge2 = Challenge(id: 1, name: "Beginner Challenges")
         beginnerChallenge2.typeofChallenge = .Beginner
         
         //TODO: beginner challenge categories
         let colorCategory = TypingCategory(id: 1, name: "Color")
         colorCategory.addWords(text:  "white","blue","green","red","purple" )
         
         let seaAnimals = TypingCategory(id: 2, name: "Sea Animals")
         seaAnimals.addWords(text:  "Turtle","Shark","Sea Horse","Dolphin","Whale" )
         
         let numberCategory = TypingCategory(id: 2, name: "Numbers")
         numberCategory.addWords(text:  "Three","Two","Eight","Nine","eleven" )
         
         beginnerChallenge2.addCategories(category: colorCategory)
         beginnerChallenge2.addCategories(category: seaAnimals)
         beginnerChallenge2.addCategories(category: numberCategory)
        //End of beginner challenge
        
        
        challenges.append( [])
        challenges[0].append( beginnerChallenge1)
        challenges[0].append( beginnerChallenge2)
        challenges[0].append( beginnerChallenge2)
        
        
        //Intermediate Challenges
        challenges.append( [])
        challenges[1].append( beginnerChallenge1)
        challenges[1].append( beginnerChallenge1)
        challenges[1].append( beginnerChallenge1)
        challenges[1].append( beginnerChallenge1)
        challenges[1].append( beginnerChallenge1)
        challenges[1].append( beginnerChallenge1)
        
        
        //Speeder Challenges
        challenges.append( [])
        challenges[2].append( beginnerChallenge1)
        challenges[2].append( beginnerChallenge1)
        challenges[2].append( beginnerChallenge1)
        challenges[2].append( beginnerChallenge1)
        challenges[2].append( beginnerChallenge1)
        
    }
    

    //MARK:Views Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

}

extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return challenges.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO create collection view or stackview 
        return challenges[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         var cell = UITableViewCell()
        cell.frame = CGRect(x: 0, y: 0, width: 100, height: 80)
        cell.backgroundColor = UIColor.gray
         return cell
    }
    
    
}

extension HomeViewController: UITableViewDelegate {
    
}
