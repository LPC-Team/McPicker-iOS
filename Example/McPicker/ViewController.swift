//
//  ViewController.swift
//  McPicker
//
//  Created by Kevin McGill on 03/22/2017.
//  Copyright (c) 2017 Kevin McGill. All rights reserved.
//

import UIKit
import McPicker

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showPressed(_ sender: Any) {
        let data:[String : Any] = [
            "numberOfComponents" : 1,
            "displayData" : ["Kevin", "Lauren", "Kibby", "Stella"],
        ]
        
        let picker = McPicker(pickerData:data)
        picker.show()
        
        McPicker.show(done: { word in
            
            return "Word is: \(word)"
        })
    }
    
}
