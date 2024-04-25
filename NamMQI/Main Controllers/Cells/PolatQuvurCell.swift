//
//  PolatQuvurCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 18/04/24.
//

import UIKit

class PolatQuvurCell: UITableViewCell {
    
    static let identifeir = "PolatQuvurCell"
    let quvurTuri = UILabel()
    let yangiQuvurButton = UIButton()
    let eskiQuvurButton = UIButton()
    let tashqiDiametriLabel = UILabel()
    let tashqiDiametrTF = UITextField()
    let devorQalinligi = UILabel()
    let devorQalinligiTF = UITextField()
    let loyihaningIchkiDiametriLabel = UILabel()
    let loyihaningIchkiDiametriTF = UITextField()
    let boshqaLabel = UILabel()
    let boshqaButton = UIButton()
    let tizimTanlash = UILabel()
    let sovuqSuvButton = UIButton()
    let issiqSuvButton = UIButton()
    let issiqSuvTF = UITextField()
    let qSarf = UILabel()
    let lSekund = UIButton()
    let mKub = UIButton()
    let kesimUzunligi = UILabel()
    let kesimUzunligiTF = UITextField()
    let natijaLabel = UILabel()
    let hisoblashButton = UIButton()
    
    let tashqiDiametrPicker = UIPickerView()
    let devorQalinligiPicker = UIPickerView()
    let gradusPicker = UIPickerView()
    
    var tashqiDiametr = [ "10", "10.2", "12", "13", "14", "16", "18", "19", "20", "21.3", "22", "24", "25", "26", "27", "28", "30", "32", "33", "33.7", "35", "36", "38", "40", "42", "44.5", "45", "48", "48.3", "51", "53", "54", "57", "60", "63.5", "70", "73", "76", "88", "89", "95", "102", "108", "114", "127", "133", "140", "152", "159", "168", "177.8", "180", "193.7", "219", "244.5", "273", "325", "355.6", "377", "406.4", "426", "530", "630", "720", "820", "920", "1020", "1120", "1220", "1420"]
    
    var devorNol = ["1", "1.2", "1.4", "1.6", "1.8", "1.9", "2", "2.2", "2.5", "2.8", "3", "3.2", "3.5", "4", "4.5", "5", "5.5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "16", "17.5", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"]
    
    var gradus = ["40", "45", "50", "55", "60", "65", "70", "75", "80", "85", "90", "95"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        style()
        layout()
        setupPikker()
    }
    
    func style() {
        contentView.backgroundColor = .systemGray6
        
        quvurTuri.text = "Quvur turini tanlang"
        quvurTuri.textColor = .label
        quvurTuri.font = UIFont.systemFont(ofSize: 17)
        
        yangiQuvurButton.setTitle("Yangi quvur", for: .normal)
        yangiQuvurButton.setTitleColor(.systemBlue, for: .normal)
        yangiQuvurButton.backgroundColor = .white
        yangiQuvurButton.layer.cornerRadius = 5
        yangiQuvurButton.addTarget(self, action: #selector(yangiQuvurButtonTap), for: .touchUpInside)
        
        eskiQuvurButton.setTitle("Eski quvur", for: .normal)
        eskiQuvurButton.setTitleColor(.systemBlue, for: .normal)
        eskiQuvurButton.backgroundColor = .white
        eskiQuvurButton.layer.cornerRadius = 5
        eskiQuvurButton.addTarget(self, action: #selector(eskiQuvurButtonTap), for: .touchUpInside)
        
        tashqiDiametriLabel.text = "Quvur tashqi diametri"
        tashqiDiametriLabel.textColor = .label
        tashqiDiametriLabel.font = UIFont.systemFont(ofSize: 17)
        
        tashqiDiametrTF.placeholder = "Quvur tashqi diametri"
        tashqiDiametrTF.layer.cornerRadius = 5
        tashqiDiametrTF.backgroundColor = .white
        tashqiDiametrTF.borderStyle = .roundedRect
        tashqiDiametrTF.textColor = .black
        
        devorQalinligi.text = "Devor qalinligi S"
        devorQalinligi.textColor = .label
        devorQalinligi.font = UIFont.systemFont(ofSize: 17)
        
        devorQalinligiTF.placeholder = "Devor qalinligi S"
        devorQalinligiTF.layer.cornerRadius = 5
        devorQalinligiTF.backgroundColor = .white
        devorQalinligiTF.borderStyle = .roundedRect
        devorQalinligiTF.textColor = .black
        
        boshqaButton.backgroundColor = .white
        boshqaButton.layer.cornerRadius = 5
        boshqaButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        boshqaButton.tintColor = .lightGray
        boshqaButton.addTarget(self, action: #selector(boshqaButtonTap), for: .touchUpInside)
        
        boshqaLabel.text = "Boshqa"
        boshqaLabel.textColor = .label
        boshqaLabel.font = UIFont.systemFont(ofSize: 17)
        
        loyihaningIchkiDiametriLabel.text = "Loyixaning ichki diametri"
        loyihaningIchkiDiametriLabel.textColor = .lightGray
        loyihaningIchkiDiametriLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        loyihaningIchkiDiametriTF.placeholder = "Quvur tashqi diametri"
        loyihaningIchkiDiametriTF.layer.cornerRadius = 5
        loyihaningIchkiDiametriTF.backgroundColor = .systemGray4
        loyihaningIchkiDiametriTF.borderStyle = .roundedRect
        loyihaningIchkiDiametriTF.textColor = .black
        
        tizimTanlash.text = "Tizimni tanlang"
        tizimTanlash.textColor = .label
        tizimTanlash.font = UIFont.systemFont(ofSize: 17)
        
        issiqSuvButton.setTitle("Issiq suv", for: .normal)
        issiqSuvButton.setTitleColor(.systemBlue, for: .normal)
        issiqSuvButton.backgroundColor = .white
        issiqSuvButton.layer.cornerRadius = 5
        issiqSuvButton.addTarget(self, action: #selector(issiqSuvButtonTap), for: .touchUpInside)
        
        issiqSuvTF.placeholder = "Suv harorati C"
        issiqSuvTF.layer.cornerRadius = 5
        issiqSuvTF.backgroundColor = .systemGray4
        issiqSuvTF.borderStyle = .roundedRect
        issiqSuvTF.textColor = .black
        
        sovuqSuvButton.setTitle("Sovuq suv", for: .normal)
        sovuqSuvButton.setTitleColor(.systemBlue, for: .normal)
        sovuqSuvButton.backgroundColor = .white
        sovuqSuvButton.layer.cornerRadius = 5
        sovuqSuvButton.addTarget(self, action: #selector(sovuqSuvButtonTap), for: .touchUpInside)
        
        qSarf.text = "Q sarfni tanlang"
        qSarf.textColor = .label
        qSarf.font = UIFont.systemFont(ofSize: 17)
        qSarf.textColor = .black
        
        lSekund.setTitle("l/sek", for: .normal)
        lSekund.setTitleColor(.systemBlue, for: .normal)
        lSekund.backgroundColor = .white
        lSekund.layer.cornerRadius = 5
        lSekund.addTarget(self, action: #selector(lSekundTap), for: .touchUpInside)
        
        mKub.setTitle("m kub/soat", for: .normal)
        mKub.setTitleColor(.systemBlue, for: .normal)
        mKub.backgroundColor = .white
        mKub.layer.cornerRadius = 5
        mKub.addTarget(self, action: #selector(mKubTap), for: .touchUpInside)
        
        kesimUzunligi.text = "Kesim uzunligi, m"
        kesimUzunligi.font = UIFont.systemFont(ofSize: 17)
        kesimUzunligi.textColor = .label
        
        kesimUzunligiTF.placeholder = "Kesim uzunligi, m"
        kesimUzunligiTF.layer.cornerRadius = 5
        kesimUzunligiTF.backgroundColor = .white
        kesimUzunligiTF.borderStyle = .roundedRect
        kesimUzunligiTF.textColor = .black
        
        natijaLabel.font = UIFont.systemFont(ofSize: 17)
        natijaLabel.textColor = .black
        natijaLabel.text = "Natija"
        
        hisoblashButton.setTitle("Hisoblash", for: .normal)
        hisoblashButton.backgroundColor = .systemBlue
        hisoblashButton.layer.cornerRadius = 15
    }
    
    func layout() {
        
        contentView.addSubviews(yangiQuvurButton, eskiQuvurButton, quvurTuri, tashqiDiametriLabel, tashqiDiametrTF, devorQalinligi, devorQalinligiTF, loyihaningIchkiDiametriLabel, loyihaningIchkiDiametriTF, boshqaButton, boshqaLabel, tizimTanlash, sovuqSuvButton, issiqSuvButton, issiqSuvTF, qSarf, lSekund, mKub, kesimUzunligi, kesimUzunligiTF, natijaLabel, hisoblashButton)
        
        quvurTuri.top(contentView.topAnchor, 15)
        quvurTuri.left(contentView.leftAnchor, 20)
        quvurTuri.right(contentView.rightAnchor, -20)
        quvurTuri.height(20)
        
        yangiQuvurButton.top(quvurTuri.bottomAnchor, 5)
        yangiQuvurButton.left(contentView.leftAnchor, 20)
        yangiQuvurButton.height(40)
        yangiQuvurButton.right(contentView.centerXAnchor, -10)
        
        eskiQuvurButton.top(quvurTuri.bottomAnchor, 5)
        eskiQuvurButton.left(contentView.centerXAnchor, 10)
        eskiQuvurButton.height(40)
        eskiQuvurButton.right(contentView.rightAnchor, -20)
        
        tashqiDiametriLabel.top(yangiQuvurButton.bottomAnchor, 20)
        tashqiDiametriLabel.left(contentView.leftAnchor, 20)
        tashqiDiametriLabel.right(contentView.rightAnchor, -20)
        tashqiDiametriLabel.height(20)
        
        tashqiDiametrTF.top(tashqiDiametriLabel.bottomAnchor, 5)
        tashqiDiametrTF.left(contentView.leftAnchor, 20)
        tashqiDiametrTF.right(contentView.rightAnchor, -20)
        tashqiDiametrTF.height(40)
        
        devorQalinligi.top(tashqiDiametrTF.bottomAnchor, 20)
        devorQalinligi.left(contentView.leftAnchor, 20)
        devorQalinligi.right(contentView.rightAnchor, -20)
        devorQalinligi.height(20)
        
        devorQalinligiTF.top(devorQalinligi.bottomAnchor, 5)
        devorQalinligiTF.left(contentView.leftAnchor, 20)
        devorQalinligiTF.right(contentView.rightAnchor, -20)
        devorQalinligiTF.height(40)
        
        boshqaButton.top(devorQalinligiTF.bottomAnchor, 20)
        boshqaButton.left(contentView.leftAnchor, 20)
        boshqaButton.height(20)
        boshqaButton.width(20)
        
        boshqaLabel.top(boshqaButton.topAnchor, 0)
        boshqaLabel.left(boshqaButton.rightAnchor, 10)
        boshqaLabel.right(contentView.rightAnchor, -20)
        boshqaLabel.height(20)
        
        loyihaningIchkiDiametriLabel.top(boshqaButton.bottomAnchor, 5)
        loyihaningIchkiDiametriLabel.left(contentView.leftAnchor, 20)
        loyihaningIchkiDiametriLabel.right(contentView.rightAnchor, -20)
        loyihaningIchkiDiametriLabel.height(20)
        
        loyihaningIchkiDiametriTF.top(loyihaningIchkiDiametriLabel.bottomAnchor, 5)
        loyihaningIchkiDiametriTF.left(contentView.leftAnchor, 20)
        loyihaningIchkiDiametriTF.right(contentView.rightAnchor, -20)
        loyihaningIchkiDiametriTF.height(40)
        
        tizimTanlash.top(loyihaningIchkiDiametriTF.bottomAnchor, 20)
        tizimTanlash.left(contentView.leftAnchor, 20)
        tizimTanlash.right(contentView.rightAnchor, -20)
        tizimTanlash.height(20)
        
        issiqSuvButton.top(tizimTanlash.bottomAnchor, 5)
        issiqSuvButton.left(contentView.leftAnchor, 20)
        issiqSuvButton.height(40)
        issiqSuvButton.right(contentView.centerXAnchor, -10)
        
        sovuqSuvButton.top(tizimTanlash.bottomAnchor, 5)
        sovuqSuvButton.left(contentView.centerXAnchor, 10)
        sovuqSuvButton.height(40)
        sovuqSuvButton.right(contentView.rightAnchor, -20)
        
        issiqSuvTF.top(issiqSuvButton.bottomAnchor, 10)
        issiqSuvTF.left(contentView.leftAnchor, 20)
        issiqSuvTF.right(contentView.rightAnchor, -20)
        issiqSuvTF.height(40)
        
        qSarf.top(issiqSuvTF.bottomAnchor, 20)
        qSarf.left(contentView.leftAnchor, 20)
        qSarf.right(contentView.rightAnchor, -20)
        qSarf.height(20)
        
        lSekund.top(qSarf.bottomAnchor, 5)
        lSekund.left(contentView.leftAnchor, 20)
        lSekund.height(40)
        lSekund.right(contentView.centerXAnchor, -10)
        
        mKub.top(qSarf.bottomAnchor, 5)
        mKub.left(contentView.centerXAnchor, 10)
        mKub.height(40)
        mKub.right(contentView.rightAnchor, -20)
        
        kesimUzunligi.top(mKub.bottomAnchor, 20)
        kesimUzunligi.left(contentView.leftAnchor, 20)
        kesimUzunligi.right(contentView.rightAnchor, -20)
        
        kesimUzunligiTF.top(kesimUzunligi.bottomAnchor, 5)
        kesimUzunligiTF.left(contentView.leftAnchor, 20)
        kesimUzunligiTF.right(contentView.rightAnchor, -20)
        kesimUzunligiTF.height(40)
        
        natijaLabel.top(kesimUzunligiTF.bottomAnchor, 20)
        natijaLabel.left(contentView.leftAnchor, 20)
        natijaLabel.width(70)
        
        hisoblashButton.top(natijaLabel.bottomAnchor, 50)
        hisoblashButton.left(contentView.leftAnchor, 60)
        hisoblashButton.right(contentView.rightAnchor, -60)
        hisoblashButton.bottom(contentView.bottomAnchor, -30)
        hisoblashButton.height(60)
    }
    
    func setupPikker() {
        tashqiDiametrPicker.delegate = self
        tashqiDiametrPicker.dataSource = self
        devorQalinligiPicker.delegate = self
        devorQalinligiPicker.dataSource = self
        gradusPicker.delegate = self
        gradusPicker.dataSource = self
        
        let toolBarTashqi = UIToolbar()
        let doneTashqi = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(doneTashqiPres))
        toolBarTashqi.items = [doneTashqi]
        toolBarTashqi.sizeToFit()
        
        let toolBarDevor = UIToolbar()
        let doneDevor = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(doneDevorPres))
        toolBarDevor.items = [doneDevor]
        toolBarDevor.sizeToFit()
        
        let toolBarGradus = UIToolbar()
        let doneDevorGradus = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(doneGradusPres))
        toolBarGradus.items = [doneDevorGradus]
        toolBarGradus.sizeToFit()
        
        tashqiDiametrTF.inputView = tashqiDiametrPicker
        tashqiDiametrTF.inputAccessoryView = toolBarTashqi
        devorQalinligiTF.inputView = devorQalinligiPicker
        devorQalinligiTF.inputAccessoryView = toolBarDevor
        issiqSuvTF.inputView = gradusPicker
        issiqSuvTF.inputAccessoryView = toolBarGradus
    }
    
    @objc func doneTashqiPres() {
        let row = tashqiDiametrPicker.selectedRow(inComponent: 0)
        tashqiDiametrTF.text = tashqiDiametr[row]
        tashqiDiametrTF.resignFirstResponder()
    }
    
    @objc func doneDevorPres() {
        let row = devorQalinligiPicker.selectedRow(inComponent: 0)
        devorQalinligiTF.text = devorNol[row]
        devorQalinligiTF.resignFirstResponder()
    }
    
    @objc func doneGradusPres() {
        let row = devorQalinligiPicker.selectedRow(inComponent: 0)
        devorQalinligiTF.text = devorNol[row]
        devorQalinligiTF.resignFirstResponder()
    }
}


extension PolatQuvurCell {
    
    @objc func yangiQuvurButtonTap() {
        yangiQuvurButton.setTitleColor(.white, for: .normal)
        yangiQuvurButton.backgroundColor = .systemBlue
        eskiQuvurButton.setTitleColor(.systemBlue, for: .normal)
        eskiQuvurButton.backgroundColor = .white
    }
    
    @objc func eskiQuvurButtonTap() {
        eskiQuvurButton.setTitleColor(.white, for: .normal)
        eskiQuvurButton.backgroundColor = .systemBlue
        yangiQuvurButton.setTitleColor(.systemBlue, for: .normal)
        yangiQuvurButton.backgroundColor = .white
    }
    
    @objc func issiqSuvButtonTap() {
        issiqSuvButton.setTitleColor(.white, for: .normal)
        issiqSuvButton.backgroundColor = .systemBlue
        sovuqSuvButton.setTitleColor(.systemBlue, for: .normal)
        sovuqSuvButton.backgroundColor = .white
        issiqSuvTF.backgroundColor = .white
    }
    
    @objc func sovuqSuvButtonTap() {
        sovuqSuvButton.setTitleColor(.white, for: .normal)
        sovuqSuvButton.backgroundColor = .systemBlue
        issiqSuvButton.setTitleColor(.systemBlue, for: .normal)
        issiqSuvButton.backgroundColor = .white
        issiqSuvTF.backgroundColor = .systemGray4
    }
    
    @objc func boshqaButtonTap() {
        if loyihaningIchkiDiametriLabel.textColor == UIColor.lightGray || loyihaningIchkiDiametriTF.backgroundColor == .systemGray4 {
            
            boshqaButton.tintColor = .systemBlue
            loyihaningIchkiDiametriLabel.textColor = UIColor.label
            loyihaningIchkiDiametriTF.backgroundColor = UIColor.white
            tashqiDiametriLabel.isHidden = true
            tashqiDiametrTF.isHidden = true
            devorQalinligi.isHidden = true
            devorQalinligiTF.isHidden = true
        } else {
            boshqaButton.tintColor = .lightGray
            loyihaningIchkiDiametriLabel.textColor = UIColor.lightGray
            loyihaningIchkiDiametriTF.backgroundColor = UIColor.systemGray4
            tashqiDiametriLabel.isHidden = false
            tashqiDiametrTF.isHidden = false
            devorQalinligi.isHidden = false
            devorQalinligiTF.isHidden = false
        }
    }
    
    @objc func lSekundTap() {
        lSekund.setTitleColor(.white, for: .normal)
        lSekund.backgroundColor = .systemBlue
        mKub.setTitleColor(.systemBlue, for: .normal)
        mKub.backgroundColor = .white
    }
    
    @objc func mKubTap() {
        mKub.setTitleColor(.white, for: .normal)
        mKub.backgroundColor = .systemBlue
        lSekund.setTitleColor(.systemBlue, for: .normal)
        lSekund.backgroundColor = .white
    }
}
