//
//  TemperatureModel.swift
//  TemperatureConverter
//
//  Created by Maribel Montejano on 11/22/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class FahrenheitTemperatureModel {
    func toFahrenheit(celsius: Int) -> String {
        return String(Double(celsius) * 1.8 + 32)
    }
    
    func getImage(celsius: Int) -> UIImage {
        if celsius < 0 {
            return #imageLiteral(resourceName: "ice")
        } else if celsius <= 100 {
            return #imageLiteral(resourceName: "water")
        } else {
            return #imageLiteral(resourceName: "steam")
        }
    }
}
