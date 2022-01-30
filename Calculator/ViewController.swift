//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert type to a Double ")
            }
            return number
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        if let calcMethod = sender.currentTitle {
            switch calcMethod {
            case "+/-":
                displayLabel.text = String(displayValue * -1)
            case "AC":
                displayLabel.text = "0"
            case "%":
                displayLabel.text = String(displayValue / 100)
            default:
                return
            }
        }
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text! = numValue
                isFinishedTypingNumber = false
            } else {
                if numValue == "." {
                    if ((displayLabel.text?.contains(".")) == true) {
                        return
                    }
                }
                displayLabel.text! += numValue
            }
        }
    }
    
}

