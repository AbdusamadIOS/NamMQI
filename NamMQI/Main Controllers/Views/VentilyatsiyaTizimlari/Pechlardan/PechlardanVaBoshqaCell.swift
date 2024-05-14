//
//  PechlardanVaBoshqaCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 14/05/24.
//

import UIKit

class PechlardanVaBoshqaCell: UITableViewCell {
    
    static let identifeir = "PechlardanVaBoshqaCell"
    let issiqlikBerishKoef = UILabel()
    let issiqlikBerishKoefTF = UITextField()
    let jihozYuzasi = UILabel()
    let jihozYUuzasiTF = UITextField()
    let tashqiYuzaningHarorati = UILabel()
    let tashqiYuzaningHaroratiTF = UITextField()
    let xonadagiHavoHarorati = UILabel()
    let xonadagiHavoHaroratiTF = UITextField()
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
        
        issiqlikBerishKoef.text = "Issiqlik berish koeffisiyenti, Vt/(м² C)"
        issiqlikBerishKoef.textColor = .label
        issiqlikBerishKoef.font = UIFont.systemFont(ofSize: 17)
        
        issiqlikBerishKoefTF.placeholder = "Issiqlik berish koeffisiyentii"
        issiqlikBerishKoefTF.layer.cornerRadius = 5
        issiqlikBerishKoefTF.backgroundColor = .white
        issiqlikBerishKoefTF.borderStyle = .roundedRect
        issiqlikBerishKoefTF.textColor = .black
        issiqlikBerishKoefTF.keyboardType = .numberPad
        
        jihozYuzasi.text = "Jihozning yuzasi м²"
        jihozYuzasi.textColor = .label
        jihozYuzasi.font = UIFont.systemFont(ofSize: 17)
        
        jihozYUuzasiTF.placeholder = "Jihozning yuzasi"
        jihozYUuzasiTF.layer.cornerRadius = 5
        jihozYUuzasiTF.backgroundColor = .white
        jihozYUuzasiTF.borderStyle = .roundedRect
        jihozYUuzasiTF.textColor = .black
        jihozYUuzasiTF.keyboardType = .numberPad
        
        tashqiYuzaningHarorati.text = "Tashqi yuzaning harorati C"
        tashqiYuzaningHarorati.textColor = .label
        tashqiYuzaningHarorati.font = UIFont.systemFont(ofSize: 17)
        
        tashqiYuzaningHaroratiTF.placeholder = "Tashqi yuzaning harorati"
        tashqiYuzaningHaroratiTF.layer.cornerRadius = 5
        tashqiYuzaningHaroratiTF.backgroundColor = .white
        tashqiYuzaningHaroratiTF.borderStyle = .roundedRect
        tashqiYuzaningHaroratiTF.textColor = .black
        tashqiYuzaningHaroratiTF.keyboardType = .numberPad
        
        xonadagiHavoHarorati.text = "Xonadagi havoning harorati, C"
        xonadagiHavoHarorati.textColor = .label
        xonadagiHavoHarorati.font = UIFont.systemFont(ofSize: 17)
        
        xonadagiHavoHaroratiTF.placeholder = "Xonadagi havoning harorati"
        xonadagiHavoHaroratiTF.layer.cornerRadius = 5
        xonadagiHavoHaroratiTF.backgroundColor = .white
        xonadagiHavoHaroratiTF.borderStyle = .roundedRect
        xonadagiHavoHaroratiTF.textColor = .black
        xonadagiHavoHaroratiTF.keyboardType = .numberPad
        
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
        contentView.addSubviews(issiqlikBerishKoef, issiqlikBerishKoefTF, jihozYuzasi, jihozYUuzasiTF, tashqiYuzaningHarorati, tashqiYuzaningHaroratiTF, xonadagiHavoHarorati, xonadagiHavoHaroratiTF, natijaLabel, resultLabel, hisoblashButton)
        
        issiqlikBerishKoef.top(contentView.topAnchor, 15)
        issiqlikBerishKoef.left(contentView.leftAnchor, 20)
        issiqlikBerishKoef.right(contentView.rightAnchor, -20)
        issiqlikBerishKoef.height(20)
        
        issiqlikBerishKoefTF.top(issiqlikBerishKoef.bottomAnchor, 5)
        issiqlikBerishKoefTF.left(contentView.leftAnchor, 20)
        issiqlikBerishKoefTF.right(contentView.rightAnchor, -20)
        issiqlikBerishKoefTF.height(40)
        
        jihozYuzasi.top(issiqlikBerishKoefTF.bottomAnchor, 15)
        jihozYuzasi.left(contentView.leftAnchor, 20)
        jihozYuzasi.right(contentView.rightAnchor, -20)
        jihozYuzasi.height(20)
        
        jihozYUuzasiTF.top(jihozYuzasi.bottomAnchor, 5)
        jihozYUuzasiTF.left(contentView.leftAnchor, 20)
        jihozYUuzasiTF.right(contentView.rightAnchor, -20)
        jihozYUuzasiTF.height(40)
        
        tashqiYuzaningHarorati.top(jihozYUuzasiTF.bottomAnchor, 15)
        tashqiYuzaningHarorati.left(contentView.leftAnchor, 20)
        tashqiYuzaningHarorati.right(contentView.rightAnchor, -20)
        tashqiYuzaningHarorati.height(20)
        
        tashqiYuzaningHaroratiTF.top(tashqiYuzaningHarorati.bottomAnchor, 5)
        tashqiYuzaningHaroratiTF.left(contentView.leftAnchor, 20)
        tashqiYuzaningHaroratiTF.right(contentView.rightAnchor, -20)
        tashqiYuzaningHaroratiTF.height(40)
        
        xonadagiHavoHarorati.top(tashqiYuzaningHaroratiTF.bottomAnchor, 15)
        xonadagiHavoHarorati.left(contentView.leftAnchor, 20)
        xonadagiHavoHarorati.right(contentView.rightAnchor, -20)
        xonadagiHavoHarorati.height(20)
        
        xonadagiHavoHaroratiTF.top(xonadagiHavoHarorati.bottomAnchor, 5)
        xonadagiHavoHaroratiTF.left(contentView.leftAnchor, 20)
        xonadagiHavoHaroratiTF.right(contentView.rightAnchor, -20)
        xonadagiHavoHaroratiTF.height(40)
        
        natijaLabel.top(xonadagiHavoHaroratiTF.bottomAnchor, 20)
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
        
        if issiqlikBerishKoefTF.text == "" {
            issiqlikBerishKoefTF.layer.borderColor = UIColor.red.cgColor
            issiqlikBerishKoefTF.layer.borderWidth = 1
        } else if jihozYUuzasiTF.text == "" {
            jihozYUuzasiTF.layer.borderColor = UIColor.red.cgColor
            jihozYUuzasiTF.layer.borderWidth = 1
        } else if tashqiYuzaningHaroratiTF.text == "" {
            tashqiYuzaningHaroratiTF.layer.borderColor = UIColor.red.cgColor
            tashqiYuzaningHaroratiTF.layer.borderWidth = 1
        } else if xonadagiHavoHaroratiTF.text == "" {
            xonadagiHavoHaroratiTF.layer.borderColor = UIColor.red.cgColor
            xonadagiHavoHaroratiTF.layer.borderWidth = 1
        } else {
            let issiqlikBerishKoef: Double = Double(issiqlikBerishKoefTF.text ?? "0") ?? 0
            let jihozYuzasi: Double = Double(jihozYUuzasiTF.text ?? "0") ?? 0
            let tashqiYuzaningHarorati: Double = Double(tashqiYuzaningHaroratiTF.text ?? "0") ?? 0
            let xonadagiHavoHarorati: Double = Double(xonadagiHavoHaroratiTF.text ?? "0") ?? 0
            
            let natija = issiqlikBerishKoef * jihozYuzasi * (tashqiYuzaningHarorati - xonadagiHavoHarorati)
            
            resultLabel.text = "\(natija)"
        }
    }
}

