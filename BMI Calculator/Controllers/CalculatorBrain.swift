//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jessie Luo on 7/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculatorBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "eat less pies", color: UIColor.red)
        }
    }
    
}
