//
//  ViewController.swift
//  MyStoreApp
//
//  Created by Francisco on 3/26/19.
//  Copyright © 2019 Francisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtStoreName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buAddStore(_ sender: Any) {
        let newStore = StoreType(context: context)
        newStore.store_name =  txtStoreName.text
        do{
            try ad.saveContext()
            txtStoreName.text =  ""
        }catch{
            print("Cannot save record")
        }
        
        
        
        
    }
    
    @IBAction func buBack(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
}

