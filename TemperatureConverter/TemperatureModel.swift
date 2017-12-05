//
//  TemperatureModel.swift
//  TemperatureConverter
//
//  Created by Maribel Montejano on 11/22/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import Foundation

class TemperatureModel {
    func toFahrenheit(celsius: Int) -> String {
        return String(Double(celsius) * 1.8 + 32)
    }
    
    func toCelsius(fahrenheit: Int) -> String {
        return String((5/9) * (Double(fahrenheit) - 32))
    }
}
