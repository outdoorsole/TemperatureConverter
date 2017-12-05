//
//  FtoCViewController.swift
//  TemperatureConverter
//
//  Created by Maribel Montejano on 12/5/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class FtoCViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // MARK: Properties
    // empty array to store temperatures
    var temps = [Int]()
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fahrenheitPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // populate the empty array with values
        for index in 0...250 {
            temps.append(index)
        }
    }

    @IBAction func switchButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
        // same as num items in array
        return temps.count
    }
    
    // MARK: Optional UIPickerViewDelgate methods
    
    // 1) return either a plain NSString, a NSAttributedString, or a view (e.g UILabel) to display the row for the component
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("titleForRow row: \(row), component \(component)")
        return String(temps[row])
    }
    
    // 2) manages behavior when row is selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didSelectRow \(row)")
        
        let tempC = fahrenheitToC(fahrenheit: Double(row))
        tempLabel.text = String(format: "%.2f", tempC) + "℃"
        
        if temps[row] < 0 {
            imageView.image = UIImage(named: "ice")
        } else if temps[row] < 100 {
            imageView.image = UIImage(named: "water")
        } else {
            imageView.image = UIImage(named: "steam")
        }
    }
    
    func fahrenheitToC(fahrenheit: Double) -> Double {
        return (5/9) * (fahrenheit - 32)
    }

}