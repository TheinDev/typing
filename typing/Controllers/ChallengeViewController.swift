//
//  ChallengeViewController.swift
//  typing
//
//  Created by Min Aung Hein on 11/13/20.
//  Copyright © 2020 Min Aung Hein. All rights reserved.
//

import UIKit


extension ChallengeViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return challence.categories.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let currentCategory = challence.categories[indexPath.count];
        let catCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categorycell", for: indexPath) as! CategoryCollectionViewCell
        
        return catCell;
    }
    
    
    
}

class ChallengeViewController: UIViewController {
    
    var challence:Challenge!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
