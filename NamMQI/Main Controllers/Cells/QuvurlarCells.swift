//
//  ShishaQuvurCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 18/04/24.
//
import UIKit

class QuvurlarCells: UITableViewCell {
    
    static let identifeir = "QuvurlarCells"
    let suvningOrtachaZichligi = UILabel()
    let suvningOrtachaZichligiTF = UITextField()
    let suvningHarakatTezligi = UILabel()
    let suvningHarakatTezligiTF = UITextField()
    let ishqalanishKoeffitsiyenti = UILabel()
    let ishqalanishKoeffitsiyentiTF = UITextField()
    let uchastkaUzunligi = UILabel()
    let uchastkaUzunligiTF = UITextField()
    let quvurIchkiDiametri = UILabel()
    let quvurIchkiDiametriTF = UITextField()
    let mahalliyQarshilik = UILabel()
    let mahalliyQarshilikTF = UITextField()
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
        
        suvningOrtachaZichligi.text = "Suvning o‘rtacha zichligi, kg/m3"
        suvningOrtachaZichligi.textColor = .label
        suvningOrtachaZichligi.font = UIFont.systemFont(ofSize: 17)
        
        suvningOrtachaZichligiTF.placeholder = "Suvning o‘rtacha zichligi"
        suvningOrtachaZichligiTF.layer.cornerRadius = 5
        suvningOrtachaZichligiTF.backgroundColor = .white
        suvningOrtachaZichligiTF.borderStyle = .roundedRect
        suvningOrtachaZichligiTF.textColor = .black
        suvningOrtachaZichligiTF.text = "1000"
        suvningOrtachaZichligiTF.keyboardType = .numberPad
        
        suvningHarakatTezligi.text = "Suvning harakat tezligi, m/s"
        suvningHarakatTezligi.textColor = .label
        suvningHarakatTezligi.font = UIFont.systemFont(ofSize: 17)
        
        suvningHarakatTezligiTF.placeholder = "Suvning harakat tezligi"
        suvningHarakatTezligiTF.layer.cornerRadius = 5
        suvningHarakatTezligiTF.backgroundColor = .white
        suvningHarakatTezligiTF.borderStyle = .roundedRect
        suvningHarakatTezligiTF.textColor = .black
        suvningHarakatTezligiTF.keyboardType = .numberPad
        
        ishqalanishKoeffitsiyenti.text = "Ishqalanish koeffitsiyenti"
        ishqalanishKoeffitsiyenti.textColor = .label
        ishqalanishKoeffitsiyenti.font = UIFont.systemFont(ofSize: 17)
        
        ishqalanishKoeffitsiyentiTF.placeholder = "Ishqalanish koeffitsiyenti"
        ishqalanishKoeffitsiyentiTF.layer.cornerRadius = 5
        ishqalanishKoeffitsiyentiTF.backgroundColor = .white
        ishqalanishKoeffitsiyentiTF.borderStyle = .roundedRect
        ishqalanishKoeffitsiyentiTF.textColor = .black
        ishqalanishKoeffitsiyentiTF.text = "0.03"
        ishqalanishKoeffitsiyentiTF.keyboardType = .numberPad
        
        uchastkaUzunligi.text = "Uchastka uzunligi, m"
        uchastkaUzunligi.textColor = .label
        uchastkaUzunligi.font = UIFont.systemFont(ofSize: 17)
        
        uchastkaUzunligiTF.placeholder = "Uchastka uzunligi, m"
        uchastkaUzunligiTF.layer.cornerRadius = 5
        uchastkaUzunligiTF.backgroundColor = .white
        uchastkaUzunligiTF.borderStyle = .roundedRect
        uchastkaUzunligiTF.textColor = .black
        uchastkaUzunligiTF.keyboardType = .numberPad
        
        quvurIchkiDiametri.text = "Quvurning ichki diametri, m"
        quvurIchkiDiametri.textColor = .label
        quvurIchkiDiametri.font = UIFont.systemFont(ofSize: 17)
        
        quvurIchkiDiametriTF.placeholder = "Quvurning ichki diametri, m"
        quvurIchkiDiametriTF.layer.cornerRadius = 5
        quvurIchkiDiametriTF.backgroundColor = .white
        quvurIchkiDiametriTF.borderStyle = .roundedRect
        quvurIchkiDiametriTF.textColor = .black
        quvurIchkiDiametriTF.keyboardType = .numberPad
        
        mahalliyQarshilik.text = "Uchastkada mahalliy qarshilik koeffitsiyenti yig‘indisi"
        mahalliyQarshilik.textColor = .label
        mahalliyQarshilik.font = UIFont.systemFont(ofSize: 17)
        mahalliyQarshilik.numberOfLines = 2
        
        mahalliyQarshilikTF.placeholder = "Uchastkada mahalliy qarshilik koeffitsiyenti yig‘indisi"
        mahalliyQarshilikTF.layer.cornerRadius = 5
        mahalliyQarshilikTF.backgroundColor = .white
        mahalliyQarshilikTF.borderStyle = .roundedRect
        mahalliyQarshilikTF.textColor = .black
        mahalliyQarshilikTF.keyboardType = .numberPad
        
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
        contentView.addSubviews(suvningOrtachaZichligi, suvningOrtachaZichligiTF, suvningHarakatTezligi, suvningHarakatTezligiTF, ishqalanishKoeffitsiyenti, ishqalanishKoeffitsiyentiTF, uchastkaUzunligi, uchastkaUzunligiTF, quvurIchkiDiametri, quvurIchkiDiametriTF, mahalliyQarshilik, mahalliyQarshilikTF, natijaLabel, resultLabel, hisoblashButton)
        
        suvningOrtachaZichligi.top(contentView.topAnchor, 15)
        suvningOrtachaZichligi.left(contentView.leftAnchor, 20)
        suvningOrtachaZichligi.right(contentView.rightAnchor, -20)
        suvningOrtachaZichligi.height(20)
        
        suvningOrtachaZichligiTF.top(suvningOrtachaZichligi.bottomAnchor, 5)
        suvningOrtachaZichligiTF.left(contentView.leftAnchor, 20)
        suvningOrtachaZichligiTF.right(contentView.rightAnchor, -20)
        suvningOrtachaZichligiTF.height(40)
        
        suvningHarakatTezligi.top(suvningOrtachaZichligiTF.bottomAnchor, 15)
        suvningHarakatTezligi.left(contentView.leftAnchor, 20)
        suvningHarakatTezligi.right(contentView.rightAnchor, -20)
        suvningHarakatTezligi.height(20)
        
        suvningHarakatTezligiTF.top(suvningHarakatTezligi.bottomAnchor, 5)
        suvningHarakatTezligiTF.left(contentView.leftAnchor, 20)
        suvningHarakatTezligiTF.right(contentView.rightAnchor, -20)
        suvningHarakatTezligiTF.height(40)
        
        ishqalanishKoeffitsiyenti.top(suvningHarakatTezligiTF.bottomAnchor, 15)
        ishqalanishKoeffitsiyenti.left(contentView.leftAnchor, 20)
        ishqalanishKoeffitsiyenti.right(contentView.rightAnchor, -20)
        ishqalanishKoeffitsiyenti.height(20)
        
        ishqalanishKoeffitsiyentiTF.top(ishqalanishKoeffitsiyenti.bottomAnchor, 5)
        ishqalanishKoeffitsiyentiTF.left(contentView.leftAnchor, 20)
        ishqalanishKoeffitsiyentiTF.right(contentView.rightAnchor, -20)
        ishqalanishKoeffitsiyentiTF.height(40)
        
        uchastkaUzunligi.top(ishqalanishKoeffitsiyentiTF.bottomAnchor, 15)
        uchastkaUzunligi.left(contentView.leftAnchor, 20)
        uchastkaUzunligi.right(contentView.rightAnchor, -20)
        uchastkaUzunligi.height(20)
        
        uchastkaUzunligiTF.top(uchastkaUzunligi.bottomAnchor, 5)
        uchastkaUzunligiTF.left(contentView.leftAnchor, 20)
        uchastkaUzunligiTF.right(contentView.rightAnchor, -20)
        uchastkaUzunligiTF.height(40)
        
        quvurIchkiDiametri.top(uchastkaUzunligiTF.bottomAnchor, 15)
        quvurIchkiDiametri.left(contentView.leftAnchor, 20)
        quvurIchkiDiametri.right(contentView.rightAnchor, -20)
        quvurIchkiDiametri.height(20)
        
        quvurIchkiDiametriTF.top(quvurIchkiDiametri.bottomAnchor, 5)
        quvurIchkiDiametriTF.left(contentView.leftAnchor, 20)
        quvurIchkiDiametriTF.right(contentView.rightAnchor, -20)
        quvurIchkiDiametriTF.height(40)
        
        mahalliyQarshilik.top(quvurIchkiDiametriTF.bottomAnchor, 15)
        mahalliyQarshilik.left(contentView.leftAnchor, 20)
        mahalliyQarshilik.right(contentView.rightAnchor, -20)
        mahalliyQarshilik.height(45)
        
        mahalliyQarshilikTF.top(mahalliyQarshilik.bottomAnchor, 5)
        mahalliyQarshilikTF.left(contentView.leftAnchor, 20)
        mahalliyQarshilikTF.right(contentView.rightAnchor, -20)
        mahalliyQarshilikTF.height(40)
        
        natijaLabel.top(mahalliyQarshilikTF.bottomAnchor, 20)
        natijaLabel.left(contentView.leftAnchor, 20)
        
        resultLabel.top(natijaLabel.topAnchor, 0)
        resultLabel.right(contentView.rightAnchor, -20)
        
        hisoblashButton.top(resultLabel.bottomAnchor, 30)
        hisoblashButton.left(contentView.leftAnchor, 100)
        hisoblashButton.right(contentView.rightAnchor, -100)
        hisoblashButton.bottom(contentView.bottomAnchor, -30)
        hisoblashButton.height(50)
    }
    
    @objc func hisoblashButtonPress() {
        
        let suvningOrtachaZichligi: Double = Double(suvningOrtachaZichligiTF.text ?? "0") ?? 0
        let suvningHarakatTezligi: Double = Double(suvningHarakatTezligiTF.text ?? "0") ?? 0
        let ishqalanishKoeffitsiyenti: Double = Double(ishqalanishKoeffitsiyentiTF.text ?? "0") ?? 0
        let uchastkaUzunligi: Double = Double(uchastkaUzunligiTF.text ?? "0") ?? 0
        let quvurIchkiDiametri: Double = Double(quvurIchkiDiametriTF.text ?? "0") ?? 0
        let mahalliyQarshilik: Double = Double(mahalliyQarshilikTF.text ?? "0") ?? 0
        
        let birinchiIsh = (suvningOrtachaZichligi * pow(suvningHarakatTezligi, 2)) / 2
        let ikkinchiIsh = ishqalanishKoeffitsiyenti * (uchastkaUzunligi / quvurIchkiDiametri)
        let natija = birinchiIsh * (ikkinchiIsh + mahalliyQarshilik)
        
        resultLabel.text = "\(natija)"
    }
}

