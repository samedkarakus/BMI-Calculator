//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Samed Karakuş on 2.08.2024.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.00
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi)
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let heightInMeters = height / 100
        bmi = weight / (heightInMeters * heightInMeters)
    }
}
