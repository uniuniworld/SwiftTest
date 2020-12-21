//
//  KanaViewController.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/08/08.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit



class KanaViewController: UIViewController, kiriDelegate{
    

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person()
        let john = John()
        let jack = Jack()
        
        person.delegate = jack
        
        person.greet()
        

        // Do any additional setup after loading the view.
    }
    
    func kill(name: String) {
        self.label.text  = name
    }
    
    @IBAction func tapedButton(_ sender: Any) {
        
        
    }
}
