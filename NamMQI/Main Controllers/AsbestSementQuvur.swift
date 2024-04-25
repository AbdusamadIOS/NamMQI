//
//  AsbestSementQuvur.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 25/04/24.
//

import Foundation
import UIKit

extension AsbestSementQuvurCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        diametr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        diametr[row]
    }
}
