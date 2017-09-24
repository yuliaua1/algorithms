//
//  ViewController.swift
//  MasterMind3
//
//  Created by Yuliya  Raldugina on 9/18/17.
//  Copyright © 2017 Yuliya  Raldugina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var guessButtons: [UIButton]!
    
    @IBOutlet weak var chosenColorLable: UILabel!
    @IBOutlet weak var masterMindCode: UILabel!
    

    @IBAction func takeMarble(_ sender: UIButton) {
        
        sender.setTitle(chosenColorLable.text, for: UIControlState.normal)
    }
    
    
    @IBAction func chooseMarble(_ sender: UIButton) {
        chosenColorLable.text = sender.titleLabel!.text
        
    }
    var originalCode = "⚪️⚫️🔴🔵"
    @IBAction func newGame(_ sender: UIButton) {
        masterMindCode.text = originalCode
        
        
        var balls = Array(masterMindCode.text!.characters)
        
        let randomMarblePositionX = Int(arc4random_uniform(4))
        let randomMarblePositionY = Int(arc4random_uniform(4))
        let randomMarblePositionZ = Int(arc4random_uniform(4))
        balls[randomMarblePositionX] = balls[randomMarblePositionY]
        balls[randomMarblePositionZ] = balls[randomMarblePositionY]
        
        for _ in 0...20 {
            
            let i = Int(arc4random_uniform(4))
            let j = Int(arc4random_uniform(4))
            
            let temp = balls[i]
            balls[i] = balls[j]
            balls[j] = temp
        }
        
        masterMindCode.text = String(balls)


        chosenColorLable.text = "❍"
        
    }
    @IBAction func checkChoices(_ sender: UIButton) {
        let checkButtonIndex = guessButtons.index(of: sender)!
        var guessMarble = ""
        for i in 1...4 {
            let indexOfChoiceMarble = checkButtonIndex - i
           // print(guessButtons[indexOfChoiceMarble].titleLabel!.text!)
            let chosenMarble = guessButtons[indexOfChoiceMarble].titleLabel!.text!
            guessMarble = chosenMarble + guessMarble
 
        }
        print("\(guessMarble) is the string of selected marbles")
 
        return
            
        
        
        var guess =  Array ("⚪️⚫️🔴🔵")
        //print(guess)
        
        var master = Array(masterMindCode.text!.characters)
        //print(master)
        
        var result = ""
        for i in 0...3 {
            if master[i] == guess[i] {
                result = result + "●"
                master[i] = "-"
                guess[i] = "-"
            }
        }
        for i in 0...3 {
            for j in 0...3 {
                if guess[i] == master[j] {
                    if guess[i] != "-" {
                        result = result + "○"
                        master[j] = "-"
                        guess[i] = "-"
                    }
                }
            }
        }
        print(result)
        
        if result.count <= 2 {
            sender.setTitle(result, for: UIControlState.normal)
        }
        else {
            var arrayResults = Array(result.characters)
            var finalResults = String(arrayResults[0]) + String(arrayResults[1])
                + "\r" + String(arrayResults[2])
            if result.count == 4 {
                finalResults = finalResults + String(arrayResults[3])
            }
            sender.setTitle( finalResults, for: UIControlState.normal)
        }
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
