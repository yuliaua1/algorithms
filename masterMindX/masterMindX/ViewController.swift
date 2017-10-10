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
                if guessButtonsArray[index - i].titleLabel!.text! == "❍" {
                    let alertController = UIAlertController(title: "Incomplete Guess", message: "Yuliya says Please Chose four marbels.", preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    present(alertController, animated: true, completion: nil)
                    print("old print to the developer")
                    return
                }
                else {
                    guessText = guessButtonsArray[index - i].titleLabel!.text! + guessText
                }
            }

            var Master = Array(masterCode.text!.characters)
            var Guess = Array(guessText.characters)
          
            
            var hint = ""
            for i in 0...3 {
                if Master[i] == Guess[i] {
                    hint = hint + "•"
                    Master[i] = "-"
                    Guess[i] = "-"
                }
                if hint.count == 2 {
                    hint = hint + "\r"
                }
            }
            for i in 0...3 {
                for j in 0...3 {
                    if Master[i] == Guess[j] {
                        if Master[i] != "-" {
                            hint = hint + "◦"
                            Master[i] = "-"
                            Guess[j] = "-"
                        }
                    }
                    if hint.count == 2 {
                        hint = hint + "\r"
                    }
                }
            }
            guessButtonsArray[index].setTitle(hint, for: UIControlState.normal)
            
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

