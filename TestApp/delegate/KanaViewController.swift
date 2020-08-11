//
//  KanaViewController.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/08/08.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit



class KanaViewController: UIViewController, kiriDelegate{
    
    func kill(name: String) {
        self.label.text  = name
    }
    

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
