//
//  MainGame.swift
//  Ios Guessing Game
//
//  Created by Christian Lamb on 10/10/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import UIKit
let difficulty = Difficulty()

class MAinGame: UIViewController {
    
    
    @IBOutlet weak var range: UILabel!
    
    @IBOutlet weak var TooHighOrLow: UILabel!
    
    
    @IBOutlet weak var GuessesRemaining: UILabel!
    
    @IBOutlet weak var UsersGuess: UITextField!
var guesses = 5
    
    
    @IBAction func  guessButtonTaped(_ sender:Any) {// This function takes away one guess
        guesses -= 1
        GuessesRemaining.text = "\(guesses) guesses remaining. "
        
    }
    
    
    @IBAction func showTheRange(_ sender:Any) {
        range.text = "Pick a Number between \(difficulty.range)"
    }
    
    
    
   
    
    
    
    
    
    
}
