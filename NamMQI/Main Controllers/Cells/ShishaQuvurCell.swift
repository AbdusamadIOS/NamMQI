//
//  ShishaQuvurCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 18/04/24.
//
import UIKit

class ShishaQuvurCell: UITableViewCell {
    
    static let identifeir = "ShishaQuvurCell"
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
    let qSarf = UILabel()
    let lSekund = UIButton()
    let mKub = UIButton()
    let kesimUzunligi = UILabel()
    let kesimUzunligiTF = UITextField()
    let mahalliyQarshiliklarLabel = UILabel()
    let mahalliyQarshiliklarButton = UIButton()
    let qarshiliklarTF = UITextField()
    let natijaLabel = UILabel()
    let hisoblashButton = UIButton()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        style()
        layout()
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
        
        eskiQuvurButton.setTitle("Eski quvur", for: .normal)
        eskiQuvurButton.setTitleColor(.systemBlue, for: .normal)
        eskiQuvurButton.backgroundColor = .white
        eskiQuvurButton.layer.cornerRadius = 5
        
        tashqiDiametriLabel.text = "Quvur tashqi diametri"
        tashqiDiametriLabel.textColor = .label
        tashqiDiametriLabel.font = UIFont.systemFont(ofSize: 17)
        
        tashqiDiametrTF.placeholder = "Quvur tashqi diametri"
        tashqiDiametrTF.layer.cornerRadius = 5
        tashqiDiametrTF.backgroundColor = .white
        tashqiDiametrTF.borderStyle = .roundedRect
        
        devorQalinligi.text = "Devor qalinligi S"
        devorQalinligi.textColor = .label
        devorQalinligi.font = UIFont.systemFont(ofSize: 17)
        
        devorQalinligiTF.placeholder = "Devor qalinligi S"
        devorQalinligiTF.layer.cornerRadius = 5
        devorQalinligiTF.backgroundColor = .white
        devorQalinligiTF.borderStyle = .roundedRect
        
        boshqaButton.backgroundColor = .white
        boshqaButton.layer.cornerRadius = 5
        
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
        
        tizimTanlash.text = "Tizimni tanlang"
        tizimTanlash.textColor = .label
        tizimTanlash.font = UIFont.systemFont(ofSize: 17)
        
        issiqSuvButton.setTitle("Issiq suv", for: .normal)
        issiqSuvButton.setTitleColor(.systemBlue, for: .normal)
        issiqSuvButton.backgroundColor = .white
        issiqSuvButton.layer.cornerRadius = 5
        
        sovuqSuvButton.setTitle("Sovuq suv", for: .normal)
        sovuqSuvButton.setTitleColor(.systemBlue, for: .normal)
        sovuqSuvButton.backgroundColor = .white
        sovuqSuvButton.layer.cornerRadius = 5
        
        qSarf.text = "Q sarfni tanlang"
        qSarf.textColor = .label
        qSarf.font = UIFont.systemFont(ofSize: 17)
        
        lSekund.setTitle("l/sek", for: .normal)
        lSekund.setTitleColor(.systemBlue, for: .normal)
        lSekund.backgroundColor = .white
        lSekund.layer.cornerRadius = 5
        
        mKub.setTitle("m kub/soat", for: .normal)
        mKub.setTitleColor(.systemBlue, for: .normal)
        mKub.backgroundColor = .white
        mKub.layer.cornerRadius = 5
        
        kesimUzunligi.text = "Kesim uzunligi, m"
        kesimUzunligi.font = UIFont.systemFont(ofSize: 17)
        kesimUzunligi.textColor = .label
        
        kesimUzunligiTF.placeholder = "Kesim uzunligi, m"
        kesimUzunligiTF.layer.cornerRadius = 5
        kesimUzunligiTF.backgroundColor = .white
        kesimUzunligiTF.borderStyle = .roundedRect
        
        mahalliyQarshiliklarButton.backgroundColor = .white
        mahalliyQarshiliklarButton.layer.cornerRadius = 5
        
        mahalliyQarshiliklarLabel.text = "Mahalliy qarshilik tufayli yo'qotishlarni hisobga olish"
        mahalliyQarshiliklarLabel.textColor = .label
        mahalliyQarshiliklarLabel.font = UIFont.systemFont(ofSize: 17)
        mahalliyQarshiliklarLabel.numberOfLines = 2
        
        qarshiliklarTF.placeholder = "Qarshiliklar"
        qarshiliklarTF.layer.cornerRadius = 5
        qarshiliklarTF.backgroundColor = .white
        qarshiliklarTF.borderStyle = .roundedRect
        
        natijaLabel.font = UIFont.systemFont(ofSize: 17)
        natijaLabel.textColor = .black
        natijaLabel.text = "Natija"
        
        hisoblashButton.setTitle("Hisoblash", for: .normal)
        hisoblashButton.backgroundColor = .systemBlue
        hisoblashButton.layer.cornerRadius = 15
    }
    
    func layout() {
        
        contentView.addSubviews(yangiQuvurButton, eskiQuvurButton, quvurTuri, tashqiDiametriLabel, tashqiDiametrTF, devorQalinligi, devorQalinligiTF, loyihaningIchkiDiametriLabel, loyihaningIchkiDiametriTF, boshqaButton, boshqaLabel, tizimTanlash, sovuqSuvButton, issiqSuvButton, qSarf, lSekund, mKub, kesimUzunligi, kesimUzunligiTF, mahalliyQarshiliklarButton, mahalliyQarshiliklarLabel, qarshiliklarTF, natijaLabel, hisoblashButton)
        
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
        
        qSarf.top(sovuqSuvButton.bottomAnchor, 20)
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
        
        mahalliyQarshiliklarButton.top(kesimUzunligiTF.bottomAnchor, 20)
        mahalliyQarshiliklarButton.left(contentView.leftAnchor, 20)
        mahalliyQarshiliklarButton.height(20)
        mahalliyQarshiliklarButton.width(20)
        
        mahalliyQarshiliklarLabel.top(mahalliyQarshiliklarButton.topAnchor, 0)
        mahalliyQarshiliklarLabel.left(mahalliyQarshiliklarButton.rightAnchor, 10)
        mahalliyQarshiliklarLabel.right(contentView.rightAnchor, -20)
        mahalliyQarshiliklarLabel.height(45)
        
        qarshiliklarTF.top(mahalliyQarshiliklarLabel.bottomAnchor, 5)
        qarshiliklarTF.left(contentView.leftAnchor, 20)
        qarshiliklarTF.right(contentView.rightAnchor, -20)
        qarshiliklarTF.height(40)
        
        natijaLabel.top(qarshiliklarTF.bottomAnchor, 20)
        natijaLabel.left(contentView.leftAnchor, 20)
        natijaLabel.width(70)
        
        hisoblashButton.top(natijaLabel.bottomAnchor, 50)
        hisoblashButton.left(contentView.leftAnchor, 60)
        hisoblashButton.right(contentView.rightAnchor, -60)
        hisoblashButton.bottom(contentView.bottomAnchor, -30)
        hisoblashButton.height(60)
        
    }
}
