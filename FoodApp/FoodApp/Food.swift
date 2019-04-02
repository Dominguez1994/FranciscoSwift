//
//  Food.swift
//  FoodApp
//
//  Created by LABMAC25 on 22/03/19.
//  Copyright © 2019 UTNG. All rights reserved.
//

import UIKit

class Food: NSObject {
    var name:String?
    var des:String?
    var image:String?
    init(name:String,des:String,image:String){
        self.name = name
        self.des = des
        self.image = image
    }
}
