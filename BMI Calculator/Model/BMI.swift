//
//  BMI.swift
//  BMI Calculator
//
//  Created by Samed Karakuş on 3.08.2024.
//

import UIKit

struct BMI {
    var value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
