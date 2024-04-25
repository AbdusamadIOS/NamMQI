//
//  PolatQuvur.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 20/04/24.
//

import Foundation
import UIKit

extension PolatQuvurCell : UIPickerViewDelegate, UIPickerViewDataSource {
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        switch pickerView {
        case self.tashqiDiametrPicker:
            return tashqiDiametr.count
        case self.devorQalinligiPicker:
            return devorNol.count
        default:
            return gradus.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView {
        case self.tashqiDiametrPicker:
            return tashqiDiametr[row]
        case self.gradusPicker:
            return gradus[row]
        default:
            return devorNol[row]
        }
    }
}


