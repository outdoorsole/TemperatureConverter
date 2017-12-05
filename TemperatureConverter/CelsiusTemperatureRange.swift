//
//  CelsiusTemperatureRange.swift
//  TemperatureConverter
//
//  Created by Maribel Montejano on 12/5/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class CelsiusTemperatureRange: NSObject, UIPickerViewDataSource {
    var temps = [Int]()
    
    override init() {
        super.init()
        
        for i in 0...250 {
            temps.append(i)
        }
    }
    
    // MARK: UIPickerViewDataSource methods
    // 1) numberOfComponents
    // 2) numberOfRowsInComponent
    
    // 1) returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 2) returns the # of rows in each component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
}
