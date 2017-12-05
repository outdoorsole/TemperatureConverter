//
//  CtoFViewController.swift
//  TemperatureConverter
//
//  Created by Maribel Montejano on 11/22/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class CtoFViewController: UIViewController, UIPickerViewDelegate {

    // MARK: Properties
    let tempModel = FahrenheitTemperatureModel()
    var tempRange = FahrenheitTemperatureRange()
    
    // MARK: Outlets
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var celsiusPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the default selected row
        let totalRows = celsiusPicker.numberOfRows(inComponent: 0)
        let initialRow = totalRows / 2
        
        celsiusPicker.selectRow(initialRow, inComponent: 0, animated: true)
        
        // Set up values and image for initial row
        pickerView(celsiusPicker, didSelectRow: initialRow, inComponent: 0)
        
    }
    
    // MARK: Optional UIPickerViewDelgate methods

    // 1) return either a plain NSString, a NSAttributedString, or a view (e.g UILabel) to display the row for the component
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("titleForRow row: \(row), component \(component)")
        return String(tempRange.temps[row])
    }

    // 2) manages behavior when row is selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = tempRange.temps[row]
        tempLabel.text = ("\(tempModel.toFahrenheit(celsius: tempC)) ℉")
        imageView.image = tempModel.getImage(celsius: tempC)
    }
    
}

