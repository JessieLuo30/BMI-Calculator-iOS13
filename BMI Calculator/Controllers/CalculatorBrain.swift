//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jessie Luo on 7/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue = ""
    
    mutating func calculatorBMI(_ height: Float, _ weight: Float) {
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%0.1f", bmi)
    }
    
    func getBMIValue() -> String {
        return bmiValue
    }
}
