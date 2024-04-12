//
//  CalculationVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 15/12/23.
//

import UIKit

class CalculationVC: UIViewController {

    @IBOutlet weak var natijaLbl: UILabel!
    @IBOutlet weak var quvurDiametriTF: UITextField!
    @IBOutlet weak var uchastkaUzunligiTF: UITextField!
    @IBOutlet weak var chuchukSuvBtn: UIButton!
    @IBOutlet weak var shorSuvBtn: UIButton!
    @IBOutlet weak var antiPrisBtn: UIButton!
    @IBOutlet weak var suvningHarakatTezligiTF: UITextField!
    @IBOutlet weak var hisoblashBtn: UIButton!
    
    var chuchukSuv: Double = 0
    var shorSuv: Double = 0
    var antiPris: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allButtonSetting()
    }
    
    func allButtonSetting() {
        chuchukSuvBtn.layer.cornerRadius = 5
        shorSuvBtn.layer.cornerRadius = 5
        antiPrisBtn.layer.cornerRadius = 5
        hisoblashBtn.layer.cornerRadius = 15
        quvurDiametriTF.keyboardType = .numberPad
        uchastkaUzunligiTF.keyboardType = .numberPad
        suvningHarakatTezligiTF.keyboardType = .numberPad
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapGesture() {
        view.endEditing(true)
    }
    
    @IBAction func chuchukSuvBtn(_ sender: UIButton) {
        sender.tintColor = .white
        sender.backgroundColor = .systemBlue
        chuchukSuv = 1000
        shorSuv = 0
        antiPris = 0
        shorSuvBtn.tintColor = .systemBlue
        shorSuvBtn.backgroundColor = .white
        antiPrisBtn.tintColor = .systemBlue
        antiPrisBtn.backgroundColor = .white
    }
    
    @IBAction func shorSuvBtn(_ sender: UIButton) {
        sender.tintColor = .white
        sender.backgroundColor = .systemBlue
        chuchukSuv = 0
        shorSuv = 1030
        antiPris = 0
        chuchukSuvBtn.tintColor = .systemBlue
        chuchukSuvBtn.backgroundColor = .white
        antiPrisBtn.tintColor = .systemBlue
        antiPrisBtn.backgroundColor = .white
    }
    
    @IBAction func antiPrisBtn(_ sender: UIButton) {
        sender.tintColor = .white
        sender.backgroundColor = .systemBlue
        chuchukSuv = 0
        shorSuv = 0
        antiPris = 790
        chuchukSuvBtn.tintColor = .systemBlue
        chuchukSuvBtn.backgroundColor = .white
        shorSuvBtn.tintColor = .systemBlue
        shorSuvBtn.backgroundColor = .white
    }
    
    @IBAction func hisoblashBtn(_ sender: UIButton) {
        
        let ishqalanishKoeffitsiyenti = 0.02782609
        let quvurIchkiDiametri = Double(quvurDiametriTF.text ?? "0")
        var resultQuvurIchkiDiametri = (quvurIchkiDiametri ?? 0) / 100
        let qarshiliklarYigindisi = 0.07
        let suvningTezligi = Double(suvningHarakatTezligiTF.text ?? "0")
        let uchastkaUzunligi = Double(uchastkaUzunligiTF.text ?? "0")
        
        let birinchiIsh = Double(((shorSuv + chuchukSuv + antiPris) * (suvningTezligi ?? 0)) / 2)
        
        let ikkinchiIsh = ishqalanishKoeffitsiyenti * ((uchastkaUzunligi ?? 0) / (quvurIchkiDiametri ?? 0))
        
        let natija = birinchiIsh * (ikkinchiIsh + qarshiliklarYigindisi)
        
        natijaLbl.text = "\(natija)"
    }
}
