//
//  ViewController.swift
//  masterMindX
//
//  Created by Yuliya  Raldugina on 10/2/17.
//  Copyright © 2017 Yuliya  Raldugina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var guessButtons: [UIButton]!
    
    @IBAction func checkMe(_ sender: UIButton) {
        print(guessButtons.index(of: sender)!)
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        for i in 0...guessButtons.count - 1 {
            guessButtons[i].setTitle("🍎", for: UIControlState.normal)
        }
    }
    

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

