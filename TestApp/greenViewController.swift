//
//  greenViewController.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/08/03.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

class greenViewController: UIViewController, SampleDelegate {
    
    func setColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    

    @IBOutlet weak var label: UILabel!
    
    var color = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
        
        label.text = color
        

        // Do any additional setup after loading the view.
    }
    
    
    
}
