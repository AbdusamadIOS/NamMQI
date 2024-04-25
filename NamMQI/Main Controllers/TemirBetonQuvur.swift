//
//  TemirBetonQuvur.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 25/04/24.
//

import Foundation
import UIKit

extension TemirBetonQuvurCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temirBeton.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return temirBeton[row]
    }
}
