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
    
    private var intermediateCalculation: (n1: Double, operation: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
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
            case "=":
                return performTwoNumCalc(n2: n)
            default:
                intermediateCalculation = (n1: n, operation: symbol)
            }
            
        }
        return nil
    }
    
    private func performTwoNumCalc(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1,
            let operation = intermediateCalculation?.operation {
            switch operation {
            case "+":
               return n1 + n2
            case "-":
                return n1 - n2
            case "÷":
                return n1 / n2
            case "×":
                return n1 * n2
            default:
                fatalError("The operation parsed does not match any case")
            }
        }
        return nil
    }
}
