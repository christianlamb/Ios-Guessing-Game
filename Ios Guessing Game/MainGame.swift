//
//  MainGame.swift
//  Ios Guessing Game
//
//  Created by Christian Lamb on 10/10/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var instructionsLabel: UILabel!
    
    @IBOutlet weak var EnterButton: UIButton!
    @IBOutlet weak var guessHereField: UITextField!
    
    @IBOutlet weak var feedBackLabel: UILabel!
    
    @IBOutlet weak var guessButtonOutlet: UIButton!
    
   
    
    @IBOutlet weak var guessesLeft: UILabel!
    
    @IBOutlet weak var playAgainButtonOUlet: UIButton!
    
   
    
    
    
    @IBAction func EnterButton(_ sender: Any) {
        let userInput = guessHereField.text!
        
        guard let guess = Int(userInput) else {
            feedBackLabel.text = "You didn't give me a number! "
            return
        }
        
        makeAGuess(guess)
    }
    
    
   



@IBAction func playAgainButton(_ sender: Any) {
    
    restart()
}

// MARK: Properties
var randomNumber = 0
var guessesRemaining = 5

var minimumNumber = 1
var maximumNumber = 100
var numberOfGuesses = 5

// MARK: Life Cycle
override func viewDidLoad() {
    restart()
    // Do any additional setup after loading the view, typically from a nib.
}

//MARK: Functions

func makeAGuess(_ guess: Int) {
    guard guess >= 1 && guess <= 100 else {
        feedBackLabel.text = "Your number wasn't between 0 and 100 you dangus"
        return
    }
    
    if guess == randomNumber {
        feedBackLabel.text = "You Win!!! Congrats"
        
        guard guessesRemaining > 0 else {
            feedBackLabel.text = "You lose!! Sorry BRO"
            setUpUIForRestart()
            return
        }
    } else if guess < randomNumber {
        feedBackLabel.text = "Guess HIGHER"
        
    } else {
        feedBackLabel.text = "Guess LOWER"
    }
    
    guessesRemaining -= 1
    guessesLeft.text = "You have \(guessesRemaining) guesses left "
    
    
}

func restart() {
    // new random number
    randomNumber = Int.random(in: minimumNumber...maximumNumber)
    // reset guesses remaining
    guessesRemaining = numberOfGuesses
    // clear text field
    guessHereField.text = ""
    // enable text field
    guessButtonOutlet.isEnabled = true
    // hide play again button
    playAgainButtonOUlet.isHidden = true
    // show guess button
    guessButtonOutlet.isHidden = false
    // reset feedback label
    feedBackLabel.text = "Guess a number!"
    // reset guesses remaining label
    guessesLeft.text = "You have \(guessesRemaining) guesses left."
    // Set instruction label
    instructionsLabel.text = "Please enter a number between 1 and \(maximumNumber)"
}
func setUpUIForRestart() {
    
    //disable input
    guessHereField.isEnabled = false
    
    //hide guess button
    guessButtonOutlet.isHidden = true
    
    //Unhide play again button
    playAgainButtonOUlet.isHidden = false
    
}


}
