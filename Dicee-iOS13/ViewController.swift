//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!

    var leftDiceNumber = Int.random(in: 0...5)
    
    var rightDiceNumber = Int.random(in: 0...5)
    
    let diceArray = [UIImage (named: "DiceOne"),
                     UIImage (named: "DiceTwo"),
                     UIImage (named: "DiceThree"),
                     UIImage (named: "DiceFour"),
                     UIImage (named: "DiceFive"),
                     UIImage (named: "DiceSix")]
    
    override func viewDidLoad() {
        Thread.sleep(forTimeInterval: 3)
        super.viewDidLoad()
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image =  diceArray[leftDiceNumber]
        
       leftDiceNumber = Int.random(in: 0...5)
        
        diceImageView2.image =  diceArray[rightDiceNumber]
        
        rightDiceNumber = Int.random(in: 0...5)
        
            
        
        

    }
}

