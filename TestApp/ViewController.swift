//
//  ViewController.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/07/29.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SampleDelegate {
    
    @IBOutlet weak var selectPrefecture: UILabel!
    
    @IBOutlet weak var label: UILabel!
    
    func setColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    
    @IBAction func setNext(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let nextViewController = segue.destination as! NextViewController
            //nextViewController.delegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

