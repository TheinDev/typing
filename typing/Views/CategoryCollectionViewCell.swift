
import UIKit

class CategoryCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var categoryTitle:UILabel!;
    

    @IBOutlet weak var cellBackground: UIView!;
    var typingCategory:TypingCategory!
    var isCategorySelected = false;
    
    override func awakeFromNib() {
        cellBackground.backgroundColor = UIColor(red:0, green: 0, blue:  100, alpha: 1);
    }
    func setCateogry(_ typingCategory:TypingCategory){
        
        self.typingCategory = typingCategory;
      
        
        
        
        
    }
    
}
