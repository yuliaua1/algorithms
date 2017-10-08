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
    
    @IBOutlet weak var masterCode: UILabel!
    
    @IBOutlet var guessButtonsArray: [UIButton]!
    
    @IBAction func checkMe(_ sender: UIButton) {
        
        let index = guessButtonsArray.index(of: sender)!
        var guessText = ""
        if (index + 1 ) % 5 == 0 {
            for i in 1...4 {
                guessText = guessButtonsArray[index - i].titleLabel!.text! + guessText
            }
            if guessText == masterCode.text! {
                guessButtonsArray[index].setTitle("✅", for: UIControlState.normal)
                print("You won!")
            }
            else{
                print("try again")
            }
        }
        else {
         guessButtonsArray[index].setTitle(selectedMarble.text!, for: UIControlState.normal)
        }
        
        print(guessText)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        var guessMarble = ""
//        print(guessMarble)
//
        //
//        for i in 1...4 {
//            let indexOfChoiceMarble = checkButtonIndex - i
//            let chosenMarble = guessButtonsArray[indexOfChoiceMarble].titleLabel!.text!
//            guessMarble = guessMarble + chosenMarble
//        }
        
        
//        let indexKazem = guessButtons.index(of: sender)!
//        if (index + 1) % 5 == 0 {
//            for j in 1...4 {
//              guessButtons[index - j].setTitle("🍏", for: UIControlState.normal)
//            }
//        }
//        else {
//            guessButtons[index].setTitle(selectedMarble.text, for: UIControlState.normal)
//        }
        
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        
        for i in 0...guessButtonsArray.count - 1 {
            if (i + 1) % 5 != 0 {
                
                guessButtonsArray[i].setTitle("❍", for: UIControlState.normal)
            }
            else {
                guessButtonsArray[i].setTitle("Check", for: UIControlState.normal)
            }
        }
        var marbles = ["🔴","🔵", "⚫️", "⚪️"]

        for _ in 0...20 {
            
            let i = Int(arc4random_uniform(4))
            let j = Int(arc4random_uniform(4))
            
            let temp = marbles[i]
            marbles[i] = marbles[j]
            marbles[j] = temp
        }
        
        var result = ""
        for i in 0...3 {
            result = result + marbles[i]
        }
        masterCode.text = result
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

