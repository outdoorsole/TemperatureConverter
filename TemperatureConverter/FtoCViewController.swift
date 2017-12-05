//
//  FtoCViewController.swift
//  TemperatureConverter
//
//  Created by Maribel Montejano on 12/5/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class FtoCViewController: UIViewController, UIPickerViewDelegate {

    // MARK: Properties
    let tempModel = CelsiusTemperatureModel()
    var tempRange = CelsiusTemperatureRange()
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fahrenheitPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set the default selected row
        let totalRows = fahrenheitPicker.numberOfRows(inComponent: 0)
        let initialRow = totalRows / 2
        
        fahrenheitPicker.selectRow(initialRow, inComponent: 0, animated: true)
        
        // Set up values and image for initial row
        pickerView(fahrenheitPicker, didSelectRow: initialRow, inComponent: 0)
    
    }

    @IBAction func switchButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Optional UIPickerViewDelgate methods
    
    // 1) return either a plain NSString, a NSAttributedString, or a view (e.g UILabel) to display the row for the component
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("titleForRow row: \(row), component \(component)")
        return String(tempRange.temps[row])
    }
    
    // 2) manages behavior when row is selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempF = tempRange.temps[row]
        tempLabel.text = ("\(tempModel.toCelsius(fahrenheit: tempF)) ℃")
        imageView.image = tempModel.getImage(fahrenheit: tempF)
    }

}
