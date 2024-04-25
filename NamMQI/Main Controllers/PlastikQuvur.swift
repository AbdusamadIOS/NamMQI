//
//  PlastikQuvur.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 25/04/24.
//

import Foundation
import UIKit

extension PlastikQuvurCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        tashqiDiametr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        tashqiDiametr[row]
    }
}
