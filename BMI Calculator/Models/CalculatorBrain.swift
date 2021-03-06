//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Paul Popa on 08.03.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi!.advice
     }
    
    func getColor() -> UIColor {
        return bmi!.color
     }
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
    let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            }
            else  {
            if bmiValue < 24.9 {
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
            }
            else  {
                bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
            }
            }
    }
   }
