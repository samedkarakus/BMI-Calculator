//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Samed Karakuş on 28.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        let heightValue = String(Int(sender.value))
        height.text = "\(heightValue) cm"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let weightValue = String(format: "%.2f", roundNearestHalf(sender.value))
        weight.text = "\(weightValue) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(Int(heightSlider.value))
        print(String(format: "%.2f", roundNearestHalf(weightSlider.value)))
        print(BMICalculation(heightSlider.value, weightSlider.value))
    }
    
    func BMICalculation(_ height: Float, _ weight: Float) -> String {
        let heightInMeters = height / 100
        let bmi = weight / (heightInMeters * heightInMeters)
        return String(format: "%.1f", bmi)
    }
    
    func roundNearestHalf(_ value: Float) -> Float {
        return round(value * 2.0) / 2.0
    }
}
