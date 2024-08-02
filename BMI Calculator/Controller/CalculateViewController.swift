//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Samed Karakuş on 28.07.2024.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

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
    
    func roundNearestHalf(_ value: Float) -> Float {
        return round(value * 2.0) / 2.0
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(Int(heightSlider.value))
        print(String(format: "%.2f", roundNearestHalf(weightSlider.value)))
        print(calculatorBrain.calculateBMI(heightSlider.value, weightSlider.value))
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
    
}
