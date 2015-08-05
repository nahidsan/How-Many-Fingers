//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Titas on 8/5/15.
//  Copyright (c) 2015 SK NAHID SANWAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var guess: UITextField!
    
    
    
    @IBAction func guessButton(sender: AnyObject) {
        
        println(guess.text)
        var randomNnumber = arc4random_uniform(6)
        var guessInt = guess.text.toInt()
        if guessInt != nil{
            if Int(randomNnumber) == guessInt {
            resultLabel.text = "PERFECT!"
            } else {
                resultLabel.text = "Nope, It was a \(randomNnumber)"
            }
            
        } else {
            resultLabel.text = "Please enter a number from 0 - 5"
        }
        
    }
    
    
    
    
    
    @IBOutlet var resultLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

