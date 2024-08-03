//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Samed Karakuş on 2.08.2024.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let aDecimalBMIValue = String(format: "%.1f", bmi?.value ?? 0.00) //bmi değeri nil olur ise 0.00 döndürecek
        return aDecimalBMIValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let heightInMeters = height / 100
        let BMIValue = weight / (heightInMeters * heightInMeters)

        if BMIValue < 18.5 {
            bmi = BMI(value: BMIValue, advice: "Eat some snacks!", color: UIColor.systemOrange)
        } else if BMIValue <= 24.9 {
            bmi = BMI(value: BMIValue, advice: "Fit as a fiddle!", color: UIColor.systemGreen)
        } else if BMIValue > 24.9 {
            bmi = BMI(value: BMIValue, advice: "Eat less snacks!", color: UIColor.systemRed)
        }
    }
}
