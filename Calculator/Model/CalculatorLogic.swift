//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by mac on 1/30/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    private var number: Double?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if let n = number {
            
            switch symbol {
            case "+/-":
                if symbol == "0" {
                    return 0
                } else {
                    return n * -1
                }
            case "AC":
                return 0
            case "%":
                return n / 100
            default:
                return nil
            }
            
        }
        return nil
    }
}
