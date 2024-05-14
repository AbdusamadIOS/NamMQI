//
//  YoritishJihozlaridanAICell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 14/05/24.
//

import UIKit

class YoritishJihozlaridanAICell: UITableViewCell {

    static let identifeir = "YoritishJihozlaridanAICell"
    let yoritanglikDarajasi = UILabel()
    let yoritanglikDarajasiTF = UITextField()
    let xonaMaydoni = UILabel()
    let xonaMaydoniTF = UITextField()
    let solishtirmaIssiqlik = UILabel()
    let solishtirmaIssiqlikTF = UITextField()
    let xonagaTushadiganIssiqlik = UILabel()
    let xonagaTushadiganIssiqlikTF = UITextField()
    let natijaLabel = UILabel()
    let resultLabel = UILabel()
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
        
        yoritanglikDarajasi.text = "Yoritilganlik darajasi, Ik"
        yoritanglikDarajasi.textColor = .label
        yoritanglikDarajasi.font = UIFont.systemFont(ofSize: 17)
        
        yoritanglikDarajasiTF.placeholder = "Yoritilganlik darajasi"
        yoritanglikDarajasiTF.layer.cornerRadius = 5
        yoritanglikDarajasiTF.backgroundColor = .white
        yoritanglikDarajasiTF.borderStyle = .roundedRect
        yoritanglikDarajasiTF.textColor = .black
        yoritanglikDarajasiTF.keyboardType = .numberPad
        
        xonaMaydoni.text = "Xona maydoni, м²"
        xonaMaydoni.textColor = .label
        xonaMaydoni.font = UIFont.systemFont(ofSize: 17)
        
        xonaMaydoniTF.placeholder = "Xona maydoni"
        xonaMaydoniTF.layer.cornerRadius = 5
        xonaMaydoniTF.backgroundColor = .white
        xonaMaydoniTF.borderStyle = .roundedRect
        xonaMaydoniTF.textColor = .black
        xonaMaydoniTF.keyboardType = .numberPad
        
        solishtirmaIssiqlik.text = "Solishtinna issiqlik ajralishi, Vt/м²"
        solishtirmaIssiqlik.textColor = .label
        solishtirmaIssiqlik.font = UIFont.systemFont(ofSize: 17)
        
        solishtirmaIssiqlikTF.placeholder = "Solishtinna issiqlik ajralishi"
        solishtirmaIssiqlikTF.layer.cornerRadius = 5
        solishtirmaIssiqlikTF.backgroundColor = .white
        solishtirmaIssiqlikTF.borderStyle = .roundedRect
        solishtirmaIssiqlikTF.textColor = .black
        solishtirmaIssiqlikTF.keyboardType = .numberPad
        
        xonagaTushadiganIssiqlik.text = "Xonaga tushadigan issiqlik enyergiyasining ulushi"
        xonagaTushadiganIssiqlik.textColor = .label
        xonagaTushadiganIssiqlik.numberOfLines = 2
        xonagaTushadiganIssiqlik.font = UIFont.systemFont(ofSize: 17)
        
        xonagaTushadiganIssiqlikTF.placeholder = "issiqlik enyergiyasining ulushi"
        xonagaTushadiganIssiqlikTF.layer.cornerRadius = 5
        xonagaTushadiganIssiqlikTF.backgroundColor = .white
        xonagaTushadiganIssiqlikTF.borderStyle = .roundedRect
        xonagaTushadiganIssiqlikTF.textColor = .black
        xonagaTushadiganIssiqlikTF.keyboardType = .numberPad
        
        natijaLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        natijaLabel.textColor = .black
        natijaLabel.text = "Natija:"
        
        resultLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        resultLabel.textColor = .black
        resultLabel.text = "0"
        resultLabel.numberOfLines = 0
        
        hisoblashButton.setTitle("Hisoblash", for: .normal)
        hisoblashButton.backgroundColor = .systemBlue
        hisoblashButton.layer.cornerRadius = 15
        hisoblashButton.addTarget(self, action: #selector(hisoblashButtonPress), for: .touchUpInside)
    }
    
    func layout() {
        contentView.addSubviews(yoritanglikDarajasi, yoritanglikDarajasiTF, xonaMaydoni, xonaMaydoniTF, solishtirmaIssiqlik, solishtirmaIssiqlikTF, xonagaTushadiganIssiqlik, xonagaTushadiganIssiqlikTF, natijaLabel, resultLabel, hisoblashButton)
        
        yoritanglikDarajasi.top(contentView.topAnchor, 15)
        yoritanglikDarajasi.left(contentView.leftAnchor, 20)
        yoritanglikDarajasi.right(contentView.rightAnchor, -20)
        yoritanglikDarajasi.height(20)
        
        yoritanglikDarajasiTF.top(yoritanglikDarajasi.bottomAnchor, 5)
        yoritanglikDarajasiTF.left(contentView.leftAnchor, 20)
        yoritanglikDarajasiTF.right(contentView.rightAnchor, -20)
        yoritanglikDarajasiTF.height(40)
        
        xonaMaydoni.top(yoritanglikDarajasiTF.bottomAnchor, 15)
        xonaMaydoni.left(contentView.leftAnchor, 20)
        xonaMaydoni.right(contentView.rightAnchor, -20)
        xonaMaydoni.height(20)
        
        xonaMaydoniTF.top(xonaMaydoni.bottomAnchor, 5)
        xonaMaydoniTF.left(contentView.leftAnchor, 20)
        xonaMaydoniTF.right(contentView.rightAnchor, -20)
        xonaMaydoniTF.height(40)
        
        solishtirmaIssiqlik.top(xonaMaydoniTF.bottomAnchor, 15)
        solishtirmaIssiqlik.left(contentView.leftAnchor, 20)
        solishtirmaIssiqlik.right(contentView.rightAnchor, -20)
        solishtirmaIssiqlik.height(20)
        
        solishtirmaIssiqlikTF.top(solishtirmaIssiqlik.bottomAnchor, 5)
        solishtirmaIssiqlikTF.left(contentView.leftAnchor, 20)
        solishtirmaIssiqlikTF.right(contentView.rightAnchor, -20)
        solishtirmaIssiqlikTF.height(40)
        
        xonagaTushadiganIssiqlik.top(solishtirmaIssiqlikTF.bottomAnchor, 15)
        xonagaTushadiganIssiqlik.left(contentView.leftAnchor, 20)
        xonagaTushadiganIssiqlik.right(contentView.rightAnchor, -20)
        xonagaTushadiganIssiqlik.height(20)
        
        xonagaTushadiganIssiqlikTF.top(xonagaTushadiganIssiqlik.bottomAnchor, 5)
        xonagaTushadiganIssiqlikTF.left(contentView.leftAnchor, 20)
        xonagaTushadiganIssiqlikTF.right(contentView.rightAnchor, -20)
        xonagaTushadiganIssiqlikTF.height(40)
        
        natijaLabel.top(xonagaTushadiganIssiqlikTF.bottomAnchor, 20)
        natijaLabel.left(contentView.leftAnchor, 20)
        
        resultLabel.top(natijaLabel.topAnchor, 0)
        resultLabel.right(contentView.rightAnchor, -20)
        
        hisoblashButton.top(resultLabel.bottomAnchor, 50)
        hisoblashButton.left(contentView.leftAnchor, 100)
        hisoblashButton.right(contentView.rightAnchor, -100)
        hisoblashButton.bottom(contentView.bottomAnchor, -30)
        hisoblashButton.height(50)
    }
    
    @objc func hisoblashButtonPress() {
        
        if yoritanglikDarajasiTF.text == "" {
            yoritanglikDarajasiTF.layer.borderColor = UIColor.red.cgColor
            yoritanglikDarajasiTF.layer.borderWidth = 1
        } else if xonaMaydoniTF.text == "" {
            xonaMaydoniTF.layer.borderColor = UIColor.red.cgColor
            xonaMaydoniTF.layer.borderWidth = 1
        } else if solishtirmaIssiqlikTF.text == "" {
            solishtirmaIssiqlikTF.layer.borderColor = UIColor.red.cgColor
            solishtirmaIssiqlikTF.layer.borderWidth = 1
        } else if xonagaTushadiganIssiqlikTF.text == "" {
            xonagaTushadiganIssiqlikTF.layer.borderColor = UIColor.red.cgColor
            xonagaTushadiganIssiqlikTF.layer.borderWidth = 1
        } else {
            let yoritanglikDarajasi: Double = Double(yoritanglikDarajasiTF.text ?? "0") ?? 0
            let xonaMaydoni: Double = Double(xonaMaydoniTF.text ?? "0") ?? 0
            let solishtirma: Double = Double(solishtirmaIssiqlikTF.text ?? "0") ?? 0
            let xonagaTushadiganIssiqlik: Double = Double(xonagaTushadiganIssiqlikTF.text ?? "0") ?? 0
            
            let natija = yoritanglikDarajasi * xonaMaydoni * solishtirma * xonagaTushadiganIssiqlik
            resultLabel.text = "\(natija)"
        }
    }
}

