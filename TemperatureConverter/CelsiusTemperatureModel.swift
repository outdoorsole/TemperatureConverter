//
//  CelsiusTemperatureModel.swift
//  TemperatureConverter
//
//  Created by Maribel Montejano on 12/5/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class CelsiusTemperatureModel {
    func toCelsius(fahrenheit: Int) -> String {
        return String((5/9) * Double(fahrenheit) - 32)
    }
    
    func getImage(fahrenheit: Int) -> UIImage {
        if fahrenheit < 32 {
            return #imageLiteral(resourceName: "ice")
        } else if fahrenheit >= 32 && fahrenheit <= 212 {
            return #imageLiteral(resourceName: "water")
        } else {
            return #imageLiteral(resourceName: "steam")
        }
    }
}
