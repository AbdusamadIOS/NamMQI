//
//  QuymaTemirQuvurCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 18/04/24.
//
import UIKit
class ChugunCell: UITableViewCell {
    
    static let identifeir = "ChugunCell"
    let quvurTuri = UILabel()
    let yangiQuvurButton = UIButton()
    let eskiQuvurButton = UIButton()
    let shartliOtish = UILabel()
    let stakview = UIStackView()
    let klassLA = UIButton()
    let klassA = UIButton()
    let klassB = UIButton()
    let d = UILabel()
    let dTF = UITextField()
    let hisoblanganIchkiDiametrLabel = UILabel()
    let hisoblanganIchkiDiametrTF = UITextField()
    let boshqaLabel = UILabel()
    let boshqaButton = UIButton()
    let qSarf = UILabel()
    let lSekund = UIButton()
    let mKub = UIButton()
    let sarfTF = UITextField()
    let uzunlikBoylabBosimYoqolishi = UILabel()
    let uzunlikBoylabBosimYoqolishiTF = UITextField()
    let natijaLabel = UILabel()
    let hisoblashButton = UIButton()
    
    var diametrPickker = UIPickerView()
    var diametr = ["65", "80", "100", "125", "150", "200", "250", "300", "350", "400", "500", "600", "800", "1000"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        style()
        layout()
        setupPicker()
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
        
        shartliOtish.text = "Klasslardan birini tanlang"
        shartliOtish.textColor = .label
        shartliOtish.font = UIFont.systemFont(ofSize: 17)
        
        stakview.spacing = 20
        stakview.alignment = .fill
        stakview.distribution = .fill
        stakview.axis = .horizontal
        
        klassLA.setTitle("Klass LA", for: .normal)
        klassLA.setTitleColor(.systemBlue, for: .normal)
        klassLA.backgroundColor = .white
        klassLA.layer.cornerRadius = 5
        klassLA.addTarget(self, action: #selector(klassLATap), for: .touchUpInside)
        
        klassB.setTitle("Klass B", for: .normal)
        klassB.setTitleColor(.systemBlue, for: .normal)
        klassB.backgroundColor = .white
        klassB.layer.cornerRadius = 5
        klassB.addTarget(self, action: #selector(klassBTap), for: .touchUpInside)
        
        klassA.setTitle("Klass A", for: .normal)
        klassA.setTitleColor(.systemBlue, for: .normal)
        klassA.backgroundColor = .white
        klassA.layer.cornerRadius = 5
        klassA.addTarget(self, action: #selector(klassATap), for: .touchUpInside)
        
        d.text = "Quvur diametr mm"
        d.textColor = .label
        d.font = UIFont.systemFont(ofSize: 17)
        
        dTF.placeholder = "Quvur diametri"
        dTF.layer.cornerRadius = 5
        dTF.backgroundColor = .white
        dTF.borderStyle = .roundedRect
        dTF.textColor = .black
        
        hisoblanganIchkiDiametrLabel.text = "Hisoblangan ichki diametr mm"
        hisoblanganIchkiDiametrLabel.textColor = .lightGray
        hisoblanganIchkiDiametrLabel.font = UIFont.systemFont(ofSize: 17)
        
        hisoblanganIchkiDiametrTF.placeholder = "Hisoblangan ichki diametr mm"
        hisoblanganIchkiDiametrTF.layer.cornerRadius = 5
        hisoblanganIchkiDiametrTF.backgroundColor = .systemGray4
        hisoblanganIchkiDiametrTF.borderStyle = .roundedRect
        hisoblanganIchkiDiametrTF.textColor = .black
        
        boshqaButton.backgroundColor = .white
        boshqaButton.layer.cornerRadius = 5
        boshqaButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        boshqaButton.tintColor = .lightGray
        boshqaButton.addTarget(self, action: #selector(boshqaButtonTap), for: .touchUpInside)
        
        boshqaLabel.text = "Boshqa"
        boshqaLabel.textColor = .label
        boshqaLabel.font = UIFont.systemFont(ofSize: 17)
        
        qSarf.text = "Q sarfni tanlang"
        qSarf.textColor = .label
        qSarf.font = UIFont.systemFont(ofSize: 17)
        
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
        
        sarfTF.placeholder = "Sarf"
        sarfTF.layer.cornerRadius = 5
        sarfTF.backgroundColor = .white
        sarfTF.borderStyle = .roundedRect
        sarfTF.textColor = .black
        
        uzunlikBoylabBosimYoqolishi.text = "Uzunlik bo'ylab bosim yo'qolishi"
        uzunlikBoylabBosimYoqolishi.textColor = .label
        uzunlikBoylabBosimYoqolishi.font = UIFont.systemFont(ofSize: 17)
        uzunlikBoylabBosimYoqolishi.numberOfLines = 2
        
        uzunlikBoylabBosimYoqolishiTF.placeholder = "Uzunlik bo'ylab bosim yo'qolishi"
        uzunlikBoylabBosimYoqolishiTF.layer.cornerRadius = 5
        uzunlikBoylabBosimYoqolishiTF.backgroundColor = .white
        uzunlikBoylabBosimYoqolishiTF.borderStyle = .roundedRect
        uzunlikBoylabBosimYoqolishiTF.textColor = .black
        
        natijaLabel.font = UIFont.systemFont(ofSize: 17)
        natijaLabel.textColor = .black
        natijaLabel.text = "Natija"
        
        hisoblashButton.setTitle("Hisoblash", for: .normal)
        hisoblashButton.backgroundColor = .systemBlue
        hisoblashButton.layer.cornerRadius = 15
    }
    
    func layout() {
        
        contentView.addSubviews(yangiQuvurButton, eskiQuvurButton, quvurTuri, stakview, shartliOtish, d, dTF, hisoblanganIchkiDiametrLabel, hisoblanganIchkiDiametrTF, boshqaLabel, boshqaButton, qSarf, lSekund, mKub, sarfTF, uzunlikBoylabBosimYoqolishi, uzunlikBoylabBosimYoqolishiTF, natijaLabel, hisoblashButton)
        
        stakview.addArrangedSubview(klassLA)
        stakview.addArrangedSubview(klassA)
        stakview.addArrangedSubview(klassB)
        klassLA.width(100)
        klassA.width(100)
        
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
        
        shartliOtish.top(eskiQuvurButton.bottomAnchor, 20)
        shartliOtish.left(contentView.leftAnchor, 20)
        shartliOtish.right(contentView.rightAnchor, -20)
        
        stakview.top(shartliOtish.bottomAnchor, 5)
        stakview.left(contentView.leftAnchor, 20)
        stakview.right(contentView.rightAnchor, -20)
        stakview.height(40)
        
        d.top(stakview.bottomAnchor, 20)
        d.left(contentView.leftAnchor, 20)
        d.right(contentView.rightAnchor, -20)
        
        dTF.top(d.bottomAnchor, 5)
        dTF.left(contentView.leftAnchor, 20)
        dTF.right(contentView.rightAnchor, -20)
        dTF.height(40)
        
        boshqaButton.top(dTF.bottomAnchor, 20)
        boshqaButton.left(contentView.leftAnchor, 20)
        boshqaButton.height(20)
        boshqaButton.width(20)
        
        boshqaLabel.top(boshqaButton.topAnchor, 0)
        boshqaLabel.left(boshqaButton.rightAnchor, 10)
        boshqaLabel.right(contentView.rightAnchor, -20)
        boshqaLabel.height(20)
        
        hisoblanganIchkiDiametrLabel.top(boshqaLabel.bottomAnchor, 5)
        hisoblanganIchkiDiametrLabel.left(contentView.leftAnchor, 20)
        hisoblanganIchkiDiametrLabel.right(contentView.rightAnchor, -20)
        
        hisoblanganIchkiDiametrTF.top(hisoblanganIchkiDiametrLabel.bottomAnchor, 5)
        hisoblanganIchkiDiametrTF.left(contentView.leftAnchor, 20)
        hisoblanganIchkiDiametrTF.right(contentView.rightAnchor, -20)
        hisoblanganIchkiDiametrTF.height(40)
        
        qSarf.top(hisoblanganIchkiDiametrTF.bottomAnchor, 20)
        qSarf.left(contentView.leftAnchor, 20)
        qSarf.right(contentView.rightAnchor, -20)
        
        lSekund.top(qSarf.bottomAnchor, 5)
        lSekund.left(contentView.leftAnchor, 20)
        lSekund.height(40)
        lSekund.right(contentView.centerXAnchor, -10)
        
        mKub.top(qSarf.bottomAnchor, 5)
        mKub.left(contentView.centerXAnchor, 10)
        mKub.height(40)
        mKub.right(contentView.rightAnchor, -20)
        
        sarfTF.top(mKub.bottomAnchor, 10)
        sarfTF.left(contentView.leftAnchor, 20)
        sarfTF.right(contentView.rightAnchor, -20)
        sarfTF.height(40)
        
        uzunlikBoylabBosimYoqolishi.top(sarfTF.bottomAnchor, 20)
        uzunlikBoylabBosimYoqolishi.left(contentView.leftAnchor, 20)
        uzunlikBoylabBosimYoqolishi.right(contentView.rightAnchor, -20)
        
        uzunlikBoylabBosimYoqolishiTF.top(uzunlikBoylabBosimYoqolishi.bottomAnchor, 5)
        uzunlikBoylabBosimYoqolishiTF.left(contentView.leftAnchor, 20)
        uzunlikBoylabBosimYoqolishiTF.right(contentView.rightAnchor, -20)
        uzunlikBoylabBosimYoqolishiTF.height(40)
        
        natijaLabel.top(uzunlikBoylabBosimYoqolishiTF.bottomAnchor, 20)
        natijaLabel.left(contentView.leftAnchor, 20)
        natijaLabel.width(70)
        
        hisoblashButton.top(natijaLabel.bottomAnchor, 50)
        hisoblashButton.left(contentView.leftAnchor, 60)
        hisoblashButton.right(contentView.rightAnchor, -60)
        hisoblashButton.bottom(contentView.bottomAnchor, -30)
        hisoblashButton.height(60)
    }
    
    func setupPicker() {
        
        diametrPickker.delegate = self
        diametrPickker.dataSource = self
        
        let toolBar = UIToolbar()
        let done = UIBarButtonItem(title: "done", style: .plain, target: self, action: #selector(donePress))
        toolBar.items = [done]
        toolBar.sizeToFit()
        
        dTF.inputAccessoryView = toolBar
        dTF.inputView = diametrPickker
    }
    
    @objc func donePress() {
        let row = diametrPickker.selectedRow(inComponent: 0)
        dTF.text = diametr[row]
        dTF.resignFirstResponder()
    }
}

extension ChugunCell {
    
    @objc func klassLATap() {
        klassLA.setTitleColor(.white, for: .normal)
        klassLA.backgroundColor = .systemBlue
        klassB.setTitleColor(.systemBlue, for: .normal)
        klassB.backgroundColor = .white
        klassA.setTitleColor(.systemBlue, for: .normal)
        klassA.backgroundColor = .white
    }
    
    @objc func klassBTap() {
        klassB.setTitleColor(.white, for: .normal)
        klassB.backgroundColor = .systemBlue
        klassLA.setTitleColor(.systemBlue, for: .normal)
        klassLA.backgroundColor = .white
        klassA.setTitleColor(.systemBlue, for: .normal)
        klassA.backgroundColor = .white
    }
    
    @objc func klassATap() {
        klassA.setTitleColor(.white, for: .normal)
        klassA.backgroundColor = .systemBlue
        klassLA.setTitleColor(.systemBlue, for: .normal)
        klassLA.backgroundColor = .white
        klassB.setTitleColor(.systemBlue, for: .normal)
        klassB.backgroundColor = .white
    }
    
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
    
    @objc func boshqaButtonTap() {
        if hisoblanganIchkiDiametrLabel.textColor == UIColor.lightGray || hisoblanganIchkiDiametrTF.backgroundColor == .systemGray4 {
            
            boshqaButton.tintColor = .systemBlue
            hisoblanganIchkiDiametrLabel.textColor = .label
            hisoblanganIchkiDiametrTF.backgroundColor = UIColor.white
            d.isHidden = true
            dTF.isHidden = true
        } else {
            boshqaButton.tintColor = .lightGray
            d.isHidden = false
            dTF.isHidden = false
            hisoblanganIchkiDiametrLabel.textColor = .lightGray
            hisoblanganIchkiDiametrTF.backgroundColor = UIColor.systemGray4
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
