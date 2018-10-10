//
//  Difficulty .swift
//  Ios Guessing Game
//
//  Created by Christian Lamb on 10/10/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import UIKit



class Difficulty : UIViewController {
    var range = 0...10
    var amountOfGuesses:Int = 0
    
    @IBOutlet weak var Easy: UIButton!
    
    @IBOutlet weak var Medium: UIButton!
    
    @IBOutlet weak var Hard: UIButton!
    
    @IBOutlet weak var Custom: UIButton!
    
    @IBAction func easyIsSelected() {
        range = 1...100
        amountOfGuesses = 10
    }
    
    @IBAction func mediumIsSelected() {
        range = 1...100
        amountOfGuesses = 5
    }
    
    @IBAction func hardIsSelected() {
        range = 1...100
        amountOfGuesses = 2
    }
    @IBAction func customIsSelected() {
        var customSelected = true 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}


