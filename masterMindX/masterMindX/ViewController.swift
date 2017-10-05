//
//  ViewController.swift
//  masterMindX
//
//  Created by Yuliya  Raldugina on 10/2/17.
//  Copyright © 2017 Yuliya  Raldugina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var selectedMarble: UILabel!
    
    @IBOutlet var guessButtons: [UIButton]!
    
    @IBAction func checkMe(_ sender: UIButton) {
        let index = guessButtons.index(of: sender)!
        if (index + 1) % 5 == 0 {
            for j in 1...4 {
              guessButtons[index - j].setTitle("🍏", for: UIControlState.normal)
            }
        }
        else {
            guessButtons[index].setTitle(selectedMarble.text, for: UIControlState.normal)
        }
        
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        
        for i in 0...guessButtons.count - 1 {
            if (i + 1) % 5 != 0 {
                
                guessButtons[i].setTitle("🍎", for: UIControlState.normal)
            }
            else {
                guessButtons[i].setTitle("Check", for: UIControlState.normal)
            }
        }
    }
    
    @IBAction func choseMarble(_ sender: UIButton) {
        selectedMarble.text = sender.currentTitle!
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

