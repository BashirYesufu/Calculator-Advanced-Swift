//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by mac on 1/30/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        switch symbol {
        case "+/-":
            if symbol == "0" {
                return 0
            } else {
            return number * -1
            }
        case "AC":
            return 0
        case "%":
            return number / 100
        default:
            return nil
        }

    }
}
