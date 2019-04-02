//
//  TVCItem.swift
//  MyStoreApp
//
//  Created by Francisco on 3/27/19.
//  Copyright © 2019 Francisco. All rights reserved.
//

import UIKit

class TVCItem: UITableViewCell {
    
    @IBOutlet weak var laStoreName: UILabel!
    @IBOutlet weak var laItemName: UILabel!
    @IBOutlet weak var ivItemImage: UIImageView!
    @IBOutlet weak var laDateAdd: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setItem(item:Items){
        laStoreName.text  = item.item_name
        laStoreName.text  = item.toStoreType?.store_name
        ivItemImage.image  = item.image as? UIImage
        
        //show date
        
        let dateFormat  = DateFormatter()
        dateFormat.dateFormat  = "MM/DD/yy h:mm a"
        laDateAdd.text  = dateFormat.string(from: item.date_add as! Date)
        
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
