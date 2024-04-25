//
//  AsbestSementQuvurCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 18/04/24.
//
import UIKit
class AsbestSementQuvurCell: UITableViewCell {
    
    static let identifeir = "AsbestSementQuvurCell"
    let shartliTeshik = UILabel()
    let stakview = UIStackView()
    let bt6 = UIButton()
    let bt9 = UIButton()
    let bt12 = UIButton()
    let d = UILabel()
    let dTF = UITextField()
    let quvurTuriOlchamigaKoraLabel = UILabel()
    let stakviewTuri = UIStackView()
    let tip1 = UIButton()
    let tip2 = UIButton()
    let tip3 = UIButton()
    let boshqaLabel = UILabel()
    let boshqaButton = UIButton()
    let ichkiDiametriLabel = UILabel()
    let ichkiDiametriTF = UITextField()
    let qSarf = UILabel()
    let lSekund = UIButton()
    let mKub = UIButton()
    let sarfTF = UITextField()
    let uzunlikBoylabBosimYoqolishi = UILabel()
    let uzunlikBoylabBosimYoqolishiTF = UITextField()
    let natijaLabel = UILabel()
    let hisoblashButton = UIButton()
    
    let diametrPicker = UIPickerView()
    let diametr = ["100", "150", "200", "250", "300", "350", "400", "500"]
    
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
        
        shartliTeshik.text = "Shartli teshik mm"
        shartliTeshik.textColor = .label
        shartliTeshik.font = UIFont.systemFont(ofSize: 17)
        
        stakview.spacing = 20
        stakview.alignment = .fill
        stakview.distribution = .fill
        stakview.axis = .horizontal
        
        bt6.setTitle("BT 6", for: .normal)
        bt6.setTitleColor(.systemBlue, for: .normal)
        bt6.backgroundColor = .white
        bt6.layer.cornerRadius = 5
        bt6.addTarget(self, action: #selector(bt6Tap), for: .touchUpInside)
        
        bt12.setTitle("BT 12", for: .normal)
        bt12.setTitleColor(.systemBlue, for: .normal)
        bt12.backgroundColor = .white
        bt12.layer.cornerRadius = 5
        bt12.addTarget(self, action: #selector(bt12Tap), for: .touchUpInside)
        
        bt9.setTitle("BT 12", for: .normal)
        bt9.setTitleColor(.systemBlue, for: .normal)
        bt9.backgroundColor = .white
        bt9.layer.cornerRadius = 5
        bt9.addTarget(self, action: #selector(bt9Tap), for: .touchUpInside)
        
        d.text = "Quvur diametr mm"
        d.textColor = .label
        d.font = UIFont.systemFont(ofSize: 17)
        
        dTF.placeholder = "Quvur diametri"
        dTF.layer.cornerRadius = 5
        dTF.backgroundColor = .white
        dTF.borderStyle = .roundedRect
        dTF.textColor = .black
        
        quvurTuriOlchamigaKoraLabel.text = "Quvur turi o'lchamiga ko'ra"
        quvurTuriOlchamigaKoraLabel.textColor = .label
        quvurTuriOlchamigaKoraLabel.font = UIFont.systemFont(ofSize: 17)
        
        stakviewTuri.spacing = 20
        stakviewTuri.alignment = .fill
        stakviewTuri.distribution = .fill
        stakviewTuri.axis = .horizontal
        
        tip1.setTitle("Tip 1", for: .normal)
        tip1.setTitleColor(.systemBlue, for: .normal)
        tip1.backgroundColor = .white
        tip1.layer.cornerRadius = 5
        tip1.addTarget(self, action: #selector(tip1Tap), for: .touchUpInside)
        
        tip2.setTitle("Tip 2", for: .normal)
        tip2.setTitleColor(.systemBlue, for: .normal)
        tip2.backgroundColor = .white
        tip2.layer.cornerRadius = 5
        tip2.addTarget(self, action: #selector(tip2Tap), for: .touchUpInside)
        
        tip3.setTitle("Tip 3", for: .normal)
        tip3.setTitleColor(.systemBlue, for: .normal)
        tip3.backgroundColor = .white
        tip3.layer.cornerRadius = 5
        tip3.addTarget(self, action: #selector(tip3Tap), for: .touchUpInside)
        
        boshqaButton.backgroundColor = .white
        boshqaButton.layer.cornerRadius = 5
        boshqaButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        boshqaButton.tintColor = .lightGray
        boshqaButton.addTarget(self, action: #selector(boshqaButtonTap), for: .touchUpInside)
        
        boshqaLabel.text = "Boshqa"
        boshqaLabel.textColor = .label
        boshqaLabel.font = UIFont.systemFont(ofSize: 17)
        
        ichkiDiametriLabel.text = "Ichki diametr mm"
        ichkiDiametriLabel.textColor = .label
        ichkiDiametriLabel.font = UIFont.systemFont(ofSize: 17)
        ichkiDiametriLabel.textColor = .lightGray
        
        ichkiDiametriTF.placeholder = "Hisoblangan ichki diametr mm"
        ichkiDiametriTF.layer.cornerRadius = 5
        ichkiDiametriTF.backgroundColor = .white
        ichkiDiametriTF.borderStyle = .roundedRect
        ichkiDiametriTF.backgroundColor = .systemGray4
        ichkiDiametriTF.textColor = .black
        
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
        
        contentView.addSubviews(shartliTeshik, stakview, stakviewTuri, d, dTF, quvurTuriOlchamigaKoraLabel, boshqaLabel, boshqaButton, ichkiDiametriLabel, ichkiDiametriTF, qSarf, lSekund, mKub, sarfTF, uzunlikBoylabBosimYoqolishi, uzunlikBoylabBosimYoqolishiTF, natijaLabel, hisoblashButton)
        
        stakview.addArrangedSubview(bt6)
        stakview.addArrangedSubview(bt9)
        stakview.addArrangedSubview(bt12)
        bt6.width(100)
        bt9.width(100)
        
        stakviewTuri.addArrangedSubview(tip1)
        stakviewTuri.addArrangedSubview(tip2)
        stakviewTuri.addArrangedSubview(tip3)
        tip1.width(100)
        tip2.width(100)
        
        shartliTeshik.top(contentView.topAnchor, 15)
        shartliTeshik.left(contentView.leftAnchor, 20)
        shartliTeshik.right(contentView.rightAnchor, -20)
        shartliTeshik.height(20)
    
        stakview.top(shartliTeshik.bottomAnchor, 5)
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
        
        quvurTuriOlchamigaKoraLabel.top(dTF.bottomAnchor, 20)
        quvurTuriOlchamigaKoraLabel.left(contentView.leftAnchor, 20)
        quvurTuriOlchamigaKoraLabel.right(contentView.rightAnchor, -20)
        
        stakviewTuri.top(quvurTuriOlchamigaKoraLabel.bottomAnchor, 5)
        stakviewTuri.left(contentView.leftAnchor, 20)
        stakviewTuri.right(contentView.rightAnchor, -20)
        stakviewTuri.height(40)
        
        boshqaButton.top(stakviewTuri.bottomAnchor, 20)
        boshqaButton.left(contentView.leftAnchor, 20)
        boshqaButton.height(20)
        boshqaButton.width(20)
        
        boshqaLabel.top(boshqaButton.topAnchor, 0)
        boshqaLabel.left(boshqaButton.rightAnchor, 10)
        boshqaLabel.right(contentView.rightAnchor, -20)
        boshqaLabel.height(20)
        
        ichkiDiametriLabel.top(boshqaLabel.bottomAnchor, 5)
        ichkiDiametriLabel.left(contentView.leftAnchor, 20)
        ichkiDiametriLabel.right(contentView.rightAnchor, -20)
        
        ichkiDiametriTF.top(ichkiDiametriLabel.bottomAnchor, 5)
        ichkiDiametriTF.left(contentView.leftAnchor, 20)
        ichkiDiametriTF.right(contentView.rightAnchor, -20)
        ichkiDiametriTF.height(40)
        
        qSarf.top(ichkiDiametriTF.bottomAnchor, 20)
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
        
        diametrPicker.delegate = self
        diametrPicker.dataSource = self
        
        let toolBar = UIToolbar()
        let done = UIBarButtonItem(title: "done", style: .plain, target: self, action: #selector(donePress))
        toolBar.items = [done]
        toolBar.sizeToFit()
        
        dTF.inputAccessoryView = toolBar
        dTF.inputView = diametrPicker
    }
    
    @objc func donePress() {
        
        let row = diametrPicker.selectedRow(inComponent: 0)
        dTF.text = diametr[row]
        dTF.resignFirstResponder()
    }
}

extension AsbestSementQuvurCell {
    
    @objc func bt6Tap() {
        bt6.setTitleColor(.white, for: .normal)
        bt6.backgroundColor = .systemBlue
        bt12.setTitleColor(.systemBlue, for: .normal)
        bt12.backgroundColor = .white
        bt9.setTitleColor(.systemBlue, for: .normal)
        bt9.backgroundColor = .white
    }
    
    @objc func bt12Tap() {
        bt12.setTitleColor(.white, for: .normal)
        bt12.backgroundColor = .systemBlue
        bt6.setTitleColor(.systemBlue, for: .normal)
        bt6.backgroundColor = .white
        bt9.setTitleColor(.systemBlue, for: .normal)
        bt9.backgroundColor = .white
    }
    
    @objc func bt9Tap() {
        bt9.setTitleColor(.white, for: .normal)
        bt9.backgroundColor = .systemBlue
        bt6.setTitleColor(.systemBlue, for: .normal)
        bt6.backgroundColor = .white
        bt12.setTitleColor(.systemBlue, for: .normal)
        bt12.backgroundColor = .white
    }
    
    @objc func tip1Tap() {
        tip1.setTitleColor(.white, for: .normal)
        tip1.backgroundColor = .systemBlue
        tip2.setTitleColor(.systemBlue, for: .normal)
        tip2.backgroundColor = .white
        tip3.setTitleColor(.systemBlue, for: .normal)
        tip3.backgroundColor = .white
    }
    
    @objc func tip2Tap() {
        tip2.setTitleColor(.white, for: .normal)
        tip2.backgroundColor = .systemBlue
        tip1.setTitleColor(.systemBlue, for: .normal)
        tip1.backgroundColor = .white
        tip3.setTitleColor(.systemBlue, for: .normal)
        tip3.backgroundColor = .white
    }
    
    @objc func tip3Tap() {
        tip3.setTitleColor(.white, for: .normal)
        tip3.backgroundColor = .systemBlue
        tip2.setTitleColor(.systemBlue, for: .normal)
        tip2.backgroundColor = .white
        tip1.setTitleColor(.systemBlue, for: .normal)
        tip1.backgroundColor = .white
    }
    
    @objc func boshqaButtonTap() {
        if ichkiDiametriLabel.textColor == UIColor.lightGray || ichkiDiametriTF.backgroundColor == .systemGray4 {
            
            boshqaButton.tintColor = .systemBlue
            ichkiDiametriLabel.textColor = .label
            ichkiDiametriTF.backgroundColor = UIColor.white
            bt6.isHidden = true
            bt12.isHidden = true
            bt9.isHidden = true
            tip1.isHidden = true
            tip2.isHidden = true
            tip3.isHidden = true
            dTF.isHidden = true
        } else {
            boshqaButton.tintColor = .lightGray
            dTF.isHidden = false
            bt6.isHidden = false
            bt12.isHidden = false
            bt9.isHidden = false
            tip1.isHidden = false
            tip2.isHidden = false
            tip3.isHidden = false
            ichkiDiametriLabel.textColor = .lightGray
            ichkiDiametriTF.backgroundColor = UIColor.systemGray4
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
