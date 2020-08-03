//
//  NextViewController.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/07/29.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

protocol SampleDelegate: class {
    func setColor(color: UIColor)
}

class NextViewController: UIViewController {
    
    weak var delegate: SampleDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func redButton(_ sender: Any) {
        delegate?.setColor(color: UIColor.red)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buleButton(_ sender: Any) {
        delegate?.setColor(color: UIColor.blue)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func greenButton(_ sender: Any) {
        delegate?.setColor(color: UIColor.green)
        
        performSegue(withIdentifier: "green", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "green" {
            let gVC = segue.destination as! greenViewController
            gVC.color = "greeen"

            
            
        }
    }
    


}
