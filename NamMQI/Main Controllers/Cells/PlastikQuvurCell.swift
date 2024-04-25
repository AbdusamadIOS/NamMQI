//
//  PlastikQuvurCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 18/04/24.
//
import UIKit
class PlastikQuvurCell: UITableViewCell {
    
    static let identifeir = "PlastikQuvurCell"
    let tashqiDiametriLabel = UILabel()
    let tashqiDiametrTF = UITextField()
    let gostBoyichaLabel = UILabel()
    let gostBoyichaButton = UIButton()
    let ichkiDiametriLabel = UILabel()
    let ichkiDiametriTF = UITextField()
    let polietilen = UILabel()
    let stakview = UIStackView()
    let pe32 = UIButton()
    let pe63 = UIButton()
    let pe80 = UIButton()
    let pe100 = UIButton()
    let quvurSeriyasiLabel = UILabel()
    let stakView1 = UIStackView()
    let stakView2 = UIStackView()
    let stakView3 = UIStackView()
    let sdr41 = UIButton()
    let sdr26 = UIButton()
    let sdr21 = UIButton()
    let sdr176 = UIButton()
    let sdr17 = UIButton()
    let sdr136 = UIButton()
    let sdr11 = UIButton()
    let sdr9 = UIButton()
    let sdr6 = UIButton()
    let qSarf = UILabel()
    let lSekund = UIButton()
    let mKub = UIButton()
    let sarfTF = UITextField()
    let uzunlikBoylabBosimYoqolishi = UILabel()
    let uzunlikBoylabBosimYoqolishiTF = UITextField()
    let natijaLabel = UILabel()
    let hisoblashButton = UIButton()
    
    let tashqiDiametrPicker = UIPickerView()
    let tashqiDiametr = ["25", "32", "40", "50", "63", "75", "90", "110", "125", "140", "160", "180", "200", "250", "280", "315", "355", "400", "450", "500", "560", "630", "710", "800", "900", "1000"]
    
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
        
        tashqiDiametriLabel.text = "Tashqi diametr mm"
        tashqiDiametriLabel.textColor = .label
        tashqiDiametriLabel.font = UIFont.systemFont(ofSize: 17)
        
        tashqiDiametrTF.placeholder = "Tashqi diametr mm"
        tashqiDiametrTF.layer.cornerRadius = 5
        tashqiDiametrTF.backgroundColor = .white
        tashqiDiametrTF.borderStyle = .roundedRect
        tashqiDiametrTF.textColor = .black
        
        gostBoyichaButton.backgroundColor = .white
        gostBoyichaButton.layer.cornerRadius = 5
        gostBoyichaButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        gostBoyichaButton.tintColor = .lightGray
        gostBoyichaButton.addTarget(self, action: #selector(gostBoyichaButtonTap), for: .touchUpInside)
        
        gostBoyichaLabel.text = "Gost bo'yicha"
        gostBoyichaLabel.textColor = .label
        gostBoyichaLabel.font = UIFont.systemFont(ofSize: 17)
        
        ichkiDiametriLabel.text = "Ichki diametr mm"
        ichkiDiametriLabel.textColor = .lightGray
        ichkiDiametriLabel.font = UIFont.systemFont(ofSize: 17)
        
        ichkiDiametriTF.placeholder = "Hisoblangan ichki diametr mm"
        ichkiDiametriTF.layer.cornerRadius = 5
        ichkiDiametriTF.backgroundColor = .systemGray4
        ichkiDiametriTF.borderStyle = .roundedRect
        ichkiDiametriTF.textColor = .black
        
        polietilen.text = "Polietilen"
        polietilen.textColor = .label
        polietilen.font = UIFont.systemFont(ofSize: 17)
        
        stakview.spacing = 10
        stakview.alignment = .fill
        stakview.distribution = .fill
        stakview.axis = .horizontal
        
        pe32.setTitle("PE32 (MRS3.2)", for: .normal)
        pe32.setTitleColor(.systemBlue, for: .normal)
        pe32.backgroundColor = .white
        pe32.layer.cornerRadius = 5
        pe32.titleLabel?.numberOfLines = 2
        pe32.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        pe32.titleLabel?.textAlignment = .center
        pe32.addTarget(self, action: #selector(pe32Tap), for: .touchUpInside)
        
        pe80.setTitle("PE63 (MRS6.3)", for: .normal)
        pe80.setTitleColor(.systemBlue, for: .normal)
        pe80.backgroundColor = .white
        pe80.layer.cornerRadius = 5
        pe80.titleLabel?.numberOfLines = 2
        pe80.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        pe80.titleLabel?.textAlignment = .center
        pe80.addTarget(self, action: #selector(pe80Tap), for: .touchUpInside)
        
        pe63.setTitle("PE80 (MRS8.0)", for: .normal)
        pe63.setTitleColor(.systemBlue, for: .normal)
        pe63.backgroundColor = .white
        pe63.layer.cornerRadius = 5
        pe63.titleLabel?.numberOfLines = 2
        pe63.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        pe63.titleLabel?.textAlignment = .center
        pe63.addTarget(self, action: #selector(pe63Tap), for: .touchUpInside)
        
        pe100.setTitle("PE100 (MRS10.0)", for: .normal)
        pe100.setTitleColor(.systemBlue, for: .normal)
        pe100.backgroundColor = .white
        pe100.layer.cornerRadius = 5
        pe100.titleLabel?.numberOfLines = 2
        pe100.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        pe100.titleLabel?.textAlignment = .center
        pe100.addTarget(self, action: #selector(pe100Tap), for: .touchUpInside)
        
        quvurSeriyasiLabel.text = "Quvur seriyasi"
        quvurSeriyasiLabel.textColor = .label
        quvurSeriyasiLabel.font = UIFont.systemFont(ofSize: 17)
        
        stakView1.spacing = 20
        stakView1.alignment = .fill
        stakView1.distribution = .fill
        stakView1.axis = .horizontal
        
        sdr41.setTitle("SDR41 (S20)", for: .normal)
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr41.layer.cornerRadius = 5
        sdr41.titleLabel?.numberOfLines = 2
        sdr41.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr41.titleLabel?.textAlignment = .center
        sdr41.addTarget(self, action: #selector(sdr41Tap), for: .touchUpInside)
        
        sdr26.setTitle("SDR26 (S12.5)", for: .normal)
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr26.layer.cornerRadius = 5
        sdr26.titleLabel?.numberOfLines = 2
        sdr26.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr26.titleLabel?.textAlignment = .center
        sdr26.addTarget(self, action: #selector(sdr26Tap), for: .touchUpInside)
        
        sdr21.setTitle("SDR21 (S10)", for: .normal)
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr21.layer.cornerRadius = 5
        sdr21.titleLabel?.numberOfLines = 2
        sdr21.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr21.titleLabel?.textAlignment = .center
        sdr21.addTarget(self, action: #selector(sdr21Tap), for: .touchUpInside)
        
        stakView2.spacing = 20
        stakView2.alignment = .fill
        stakView2.distribution = .fill
        stakView2.axis = .horizontal
        
        sdr176.setTitle("SDR17.6 (S8.3)", for: .normal)
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr176.layer.cornerRadius = 5
        sdr176.titleLabel?.numberOfLines = 2
        sdr176.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr176.titleLabel?.textAlignment = .center
        sdr176.addTarget(self, action: #selector(sdr176Tap), for: .touchUpInside)
        
        sdr17.setTitle("SDR17 (S8)", for: .normal)
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr17.layer.cornerRadius = 5
        sdr17.titleLabel?.numberOfLines = 2
        sdr17.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr17.titleLabel?.textAlignment = .center
        sdr17.addTarget(self, action: #selector(sdr17Tap), for: .touchUpInside)
        
        sdr136.setTitle("SDR13.6 (S6.3)", for: .normal)
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr136.layer.cornerRadius = 5
        sdr136.titleLabel?.numberOfLines = 2
        sdr136.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr136.titleLabel?.textAlignment = .center
        sdr136.addTarget(self, action: #selector(sdr136Tap), for: .touchUpInside)
        
        stakView3.spacing = 20
        stakView3.alignment = .fill
        stakView3.distribution = .fill
        stakView3.axis = .horizontal
        
        sdr11.setTitle("SDR11 (S5)", for: .normal)
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr11.layer.cornerRadius = 5
        sdr11.titleLabel?.numberOfLines = 2
        sdr11.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr11.titleLabel?.textAlignment = .center
        sdr11.addTarget(self, action: #selector(sdr11Tap), for: .touchUpInside)
        
        sdr9.setTitle("SDR9 (S4)", for: .normal)
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr9.layer.cornerRadius = 5
        sdr9.titleLabel?.numberOfLines = 2
        sdr9.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr9.titleLabel?.textAlignment = .center
        sdr9.addTarget(self, action: #selector(sdr9Tap), for: .touchUpInside)
        
        sdr6.setTitle("SDR6 (S2.5)", for: .normal)
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
        sdr6.layer.cornerRadius = 5
        sdr6.titleLabel?.numberOfLines = 2
        sdr6.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        sdr6.titleLabel?.textAlignment = .center
        sdr6.addTarget(self, action: #selector(sdr6Tap), for: .touchUpInside)
        
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
        
        contentView.addSubviews(tashqiDiametriLabel, tashqiDiametrTF, gostBoyichaLabel, gostBoyichaButton, ichkiDiametriLabel, ichkiDiametriTF, polietilen, stakview, quvurSeriyasiLabel, stakView1, stakView2, stakView3,  qSarf, lSekund, mKub, sarfTF, uzunlikBoylabBosimYoqolishi, uzunlikBoylabBosimYoqolishiTF, natijaLabel, hisoblashButton)
        
        stakview.addArrangedSubview(pe32)
        stakview.addArrangedSubview(pe63)
        stakview.addArrangedSubview(pe80)
        stakview.addArrangedSubview(pe100)
        pe32.width(80)
        pe63.width(80)
        pe80.width(80)
        
        stakView1.addArrangedSubview(sdr41)
        stakView1.addArrangedSubview(sdr26)
        stakView1.addArrangedSubview(sdr21)
        sdr41.width(100)
        sdr26.width(100)
        
        stakView2.addArrangedSubview(sdr176)
        stakView2.addArrangedSubview(sdr17)
        stakView2.addArrangedSubview(sdr136)
        sdr176.width(100)
        sdr17.width(100)
        
        stakView3.addArrangedSubview(sdr11)
        stakView3.addArrangedSubview(sdr9)
        stakView3.addArrangedSubview(sdr6)
        sdr11.width(100)
        sdr9.width(100)
        
        tashqiDiametriLabel.top(contentView.topAnchor, 15)
        tashqiDiametriLabel.left(contentView.leftAnchor, 20)
        tashqiDiametriLabel.right(contentView.rightAnchor, -20)
        tashqiDiametriLabel.height(20)
    
        tashqiDiametrTF.top(tashqiDiametriLabel.bottomAnchor, 5)
        tashqiDiametrTF.left(contentView.leftAnchor, 20)
        tashqiDiametrTF.right(contentView.rightAnchor, -20)
        tashqiDiametrTF.height(40)
        
        gostBoyichaButton.top(tashqiDiametrTF.bottomAnchor, 20)
        gostBoyichaButton.left(contentView.leftAnchor, 20)
        gostBoyichaButton.height(20)
        gostBoyichaButton.width(20)
        
        gostBoyichaLabel.top(gostBoyichaButton.topAnchor, 0)
        gostBoyichaLabel.left(gostBoyichaButton.rightAnchor, 10)
        gostBoyichaLabel.right(contentView.rightAnchor, -20)
        gostBoyichaLabel.height(20)
        
        ichkiDiametriLabel.top(gostBoyichaLabel.bottomAnchor, 5)
        ichkiDiametriLabel.left(contentView.leftAnchor, 20)
        ichkiDiametriLabel.right(contentView.rightAnchor, -20)
        
        ichkiDiametriTF.top(ichkiDiametriLabel.bottomAnchor, 5)
        ichkiDiametriTF.left(contentView.leftAnchor, 20)
        ichkiDiametriTF.right(contentView.rightAnchor, -20)
        ichkiDiametriTF.height(40)
        
        polietilen.top(ichkiDiametriTF.bottomAnchor, 20)
        polietilen.left(contentView.leftAnchor, 20)
        polietilen.right(contentView.rightAnchor, -20)
        
        stakview.top(polietilen.bottomAnchor, 5)
        stakview.left(contentView.leftAnchor, 20)
        stakview.right(contentView.rightAnchor, -20)
        stakview.height(40)
        
        quvurSeriyasiLabel.top(stakview.bottomAnchor, 20)
        quvurSeriyasiLabel.left(contentView.leftAnchor, 20)
        quvurSeriyasiLabel.right(contentView.rightAnchor, -20)
        
        stakView1.top(quvurSeriyasiLabel.bottomAnchor, 5)
        stakView1.left(contentView.leftAnchor, 20)
        stakView1.right(contentView.rightAnchor, -20)
        stakView1.height(40)
        
        stakView2.top(stakView1.bottomAnchor, 10)
        stakView2.left(contentView.leftAnchor, 20)
        stakView2.right(contentView.rightAnchor, -20)
        stakView2.height(40)
        
        stakView3.top(stakView2.bottomAnchor, 10)
        stakView3.left(contentView.leftAnchor, 20)
        stakView3.right(contentView.rightAnchor, -20)
        stakView3.height(40)
        
        qSarf.top(stakView3.bottomAnchor, 20)
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
        
        tashqiDiametrPicker.delegate = self
        tashqiDiametrPicker.dataSource = self
        
        let toolBar = UIToolbar()
        let done = UIBarButtonItem(title: "done", style: .plain, target: self, action: #selector(donePress))
        toolBar.items = [done]
        toolBar.sizeToFit()
        
        tashqiDiametrTF.inputAccessoryView = toolBar
        tashqiDiametrTF.inputView = tashqiDiametrPicker
    }
    
    @objc func donePress() {
        
        let row = tashqiDiametrPicker.selectedRow(inComponent: 0)
        tashqiDiametrTF.text = tashqiDiametr[row]
        tashqiDiametrTF.resignFirstResponder()
    }
}

extension PlastikQuvurCell {
    
    @objc func gostBoyichaButtonTap() {
        if ichkiDiametriLabel.textColor == UIColor.lightGray || ichkiDiametriTF.backgroundColor == .systemGray4 {
            
            gostBoyichaButton.tintColor = .systemBlue
            ichkiDiametriLabel.textColor = .label
            ichkiDiametriTF.backgroundColor = UIColor.white
            pe32.isHidden = true
            pe63.isHidden = true
            pe80.isHidden = true
            pe100.isHidden = true
            sdr41.isHidden = true
            sdr26.isHidden = true
            sdr21.isHidden = true
            sdr176.isHidden = true
            sdr17.isHidden = true
            sdr136.isHidden = true
            sdr11.isHidden = true
            sdr9.isHidden = true
            sdr6.isHidden = true
            tashqiDiametrTF.isHidden = true
        } else {
            gostBoyichaButton.tintColor = .lightGray
            pe32.isHidden = false
            pe63.isHidden = false
            pe80.isHidden = false
            pe100.isHidden = false
            sdr41.isHidden = false
            sdr26.isHidden = false
            sdr21.isHidden = false
            sdr176.isHidden = false
            sdr17.isHidden = false
            sdr136.isHidden = false
            sdr11.isHidden = false
            sdr9.isHidden = false
            sdr6.isHidden = false
            tashqiDiametrTF.isHidden = false
            ichkiDiametriLabel.textColor = .lightGray
            ichkiDiametriTF.backgroundColor = UIColor.systemGray4
        }
    }
    
    @objc func pe32Tap() {
        pe32.setTitleColor(.white, for: .normal)
        pe32.backgroundColor = .systemBlue
        pe80.setTitleColor(.systemBlue, for: .normal)
        pe80.backgroundColor = .white
        pe63.setTitleColor(.systemBlue, for: .normal)
        pe63.backgroundColor = .white
        pe100.setTitleColor(.systemBlue, for: .normal)
        pe100.backgroundColor = .white
        
        sdr41.isHidden = true
        sdr26.isHidden = true
        sdr21.isHidden = false
        sdr176.isHidden = true
        sdr17.isHidden = true
        sdr136.isHidden = false
        sdr11.isHidden = true
        sdr9.isHidden = false
        sdr6.isHidden = false
    }
    
    @objc func pe63Tap() {
        pe63.setTitleColor(.white, for: .normal)
        pe63.backgroundColor = .systemBlue
        pe80.setTitleColor(.systemBlue, for: .normal)
        pe80.backgroundColor = .white
        pe100.setTitleColor(.systemBlue, for: .normal)
        pe100.backgroundColor = .white
        pe32.setTitleColor(.systemBlue, for: .normal)
        pe32.backgroundColor = .white
        
        sdr41.isHidden = false
        sdr26.isHidden = false
        sdr21.isHidden = true
        sdr176.isHidden = false
        sdr17.isHidden = true
        sdr136.isHidden = true
        sdr11.isHidden = false
        sdr9.isHidden = true
        sdr6.isHidden = true
    }
    
    @objc func pe80Tap() {
        pe80.setTitleColor(.white, for: .normal)
        pe80.backgroundColor = .systemBlue
        pe63.setTitleColor(.systemBlue, for: .normal)
        pe63.backgroundColor = .white
        pe100.setTitleColor(.systemBlue, for: .normal)
        pe100.backgroundColor = .white
        pe32.setTitleColor(.systemBlue, for: .normal)
        pe32.backgroundColor = .white
        
        sdr41.isHidden = true
        sdr26.isHidden = false
        sdr21.isHidden = false
        sdr176.isHidden = false
        sdr17.isHidden = false
        sdr136.isHidden = false
        sdr11.isHidden = false
        sdr9.isHidden = false
        sdr6.isHidden = true
    }
    
    @objc func pe100Tap() {
        pe100.setTitleColor(.white, for: .normal)
        pe100.backgroundColor = .systemBlue
        pe63.setTitleColor(.systemBlue, for: .normal)
        pe63.backgroundColor = .white
        pe80.setTitleColor(.systemBlue, for: .normal)
        pe80.backgroundColor = .white
        pe32.setTitleColor(.systemBlue, for: .normal)
        pe32.backgroundColor = .white
        
        sdr41.isHidden = true
        sdr26.isHidden = true
        sdr21.isHidden = true
        sdr176.isHidden = true
        sdr17.isHidden = false
        sdr136.isHidden = false
        sdr11.isHidden = false
        sdr9.isHidden = true
        sdr6.isHidden = true
    }
    
    @objc func sdr41Tap() {
        sdr41.setTitleColor(.white, for: .normal)
        sdr41.backgroundColor = .systemBlue
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr26Tap() {
        sdr26.setTitleColor(.white, for: .normal)
        sdr26.backgroundColor = .systemBlue
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr21Tap() {
        sdr21.setTitleColor(.white, for: .normal)
        sdr21.backgroundColor = .systemBlue
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr176Tap() {
        sdr176.setTitleColor(.white, for: .normal)
        sdr176.backgroundColor = .systemBlue
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr17Tap() {
        sdr17.setTitleColor(.white, for: .normal)
        sdr17.backgroundColor = .systemBlue
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr136Tap() {
        sdr136.setTitleColor(.white, for: .normal)
        sdr136.backgroundColor = .systemBlue
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr11Tap() {
        sdr11.setTitleColor(.white, for: .normal)
        sdr11.backgroundColor = .systemBlue
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr9Tap() {
        sdr9.setTitleColor(.white, for: .normal)
        sdr9.backgroundColor = .systemBlue
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr17.setTitleColor(.systemBlue, for: .normal)
        sdr17.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr6.setTitleColor(.systemBlue, for: .normal)
        sdr6.backgroundColor = .white
    }
    
    @objc func sdr6Tap() {
        sdr6.setTitleColor(.white, for: .normal)
        sdr6.backgroundColor = .systemBlue
        sdr136.setTitleColor(.systemBlue, for: .normal)
        sdr136.backgroundColor = .white
        sdr176.setTitleColor(.systemBlue, for: .normal)
        sdr176.backgroundColor = .white
        sdr21.setTitleColor(.systemBlue, for: .normal)
        sdr21.backgroundColor = .white
        sdr11.setTitleColor(.systemBlue, for: .normal)
        sdr11.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
        sdr26.setTitleColor(.systemBlue, for: .normal)
        sdr26.backgroundColor = .white
        sdr41.setTitleColor(.systemBlue, for: .normal)
        sdr41.backgroundColor = .white
        sdr9.setTitleColor(.systemBlue, for: .normal)
        sdr9.backgroundColor = .white
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
