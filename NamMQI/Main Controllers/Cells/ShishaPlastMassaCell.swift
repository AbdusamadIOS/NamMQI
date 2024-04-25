//
//  ShishaPlastMassaCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 18/04/24.
//
import UIKit
class ShishaPlastMassaCell: UITableViewCell {
    
    static let identifeir = "ShishaPlastMassaCell"
    let ichkiDiametr = UILabel()
    let ichkiDiametrTF = UITextField()
    let boshqa = UILabel()
    let boshqaButton = UIButton()
    let dpTF = UITextField()
    let qSarf = UILabel()
    let lSekund = UIButton()
    let mKub = UIButton()
    let sarfTF = UITextField()
    let uzunlikBoylabBosimYoqolishi = UILabel()
    let uzunlikBoylabBosimYoqolishiTF = UITextField()
    let natijaLabel = UILabel()
    let hisoblashButton = UIButton()
    
    let shishaPlastMassaPicker = UIPickerView()
    let shishaPlastMassa = ["50", "60", "80", "90", "110", "150", "175", "200", "215", "265", "300", "315", "400"]
    
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
        
        ichkiDiametr.text = "Ichki diametr mm"
        ichkiDiametr.textColor = .label
        ichkiDiametr.font = UIFont.systemFont(ofSize: 17)
        
        ichkiDiametrTF.placeholder = "ichki diametr"
        ichkiDiametrTF.layer.cornerRadius = 5
        ichkiDiametrTF.backgroundColor = .white
        ichkiDiametrTF.borderStyle = .roundedRect
        ichkiDiametrTF.textColor = .black
        
        boshqaButton.backgroundColor = .white
        boshqaButton.layer.cornerRadius = 5
        boshqaButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        boshqaButton.tintColor = .lightGray
        boshqaButton.addTarget(self, action: #selector(boshqaButtonTap), for: .touchUpInside)
        
        boshqa.text = "Boshqa"
        boshqa.textColor = .label
        boshqa.font = UIFont.systemFont(ofSize: 17)
        
        dpTF.placeholder = "dp mm"
        dpTF.layer.cornerRadius = 5
        dpTF.backgroundColor = .systemGray4
        dpTF.borderStyle = .roundedRect
        dpTF.textColor = .black
        
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
        contentView.addSubviews(ichkiDiametr, ichkiDiametrTF, boshqa, boshqaButton, dpTF, qSarf, lSekund, mKub, sarfTF, uzunlikBoylabBosimYoqolishi, uzunlikBoylabBosimYoqolishiTF, natijaLabel, hisoblashButton)
        
        ichkiDiametr.top(contentView.topAnchor, 15)
        ichkiDiametr.left(contentView.leftAnchor, 20)
        ichkiDiametr.right(contentView.rightAnchor, -20)
        ichkiDiametr.height(20)
        
        ichkiDiametrTF.top(ichkiDiametr.bottomAnchor, 5)
        ichkiDiametrTF.left(contentView.leftAnchor, 20)
        ichkiDiametrTF.right(contentView.rightAnchor, -20)
        ichkiDiametrTF.height(40)
        
        boshqaButton.top(ichkiDiametrTF.bottomAnchor, 20)
        boshqaButton.left(contentView.leftAnchor, 20)
        boshqaButton.height(20)
        boshqaButton.width(20)
        
        boshqa.top(boshqaButton.topAnchor, 0)
        boshqa.left(boshqaButton.rightAnchor, 10)
        boshqa.right(contentView.rightAnchor, -20)
        boshqa.height(20)
        
        dpTF.top(boshqa.bottomAnchor, 5)
        dpTF.left(contentView.leftAnchor, 20)
        dpTF.right(contentView.rightAnchor, -20)
        dpTF.height(40)
        
        qSarf.top(dpTF.bottomAnchor, 20)
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
        
        shishaPlastMassaPicker.delegate = self
        shishaPlastMassaPicker.dataSource = self
        
        let toolBar = UIToolbar()
        let done = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(donePress))
        
        toolBar.items = [done]
        toolBar.sizeToFit()
        
        ichkiDiametrTF.inputAccessoryView = toolBar
        ichkiDiametrTF.inputView = shishaPlastMassaPicker
    }
    
    @objc func donePress() {
        let row = shishaPlastMassaPicker.selectedRow(inComponent: 0)
        ichkiDiametrTF.text = shishaPlastMassa[row]
        ichkiDiametrTF.resignFirstResponder()
    }
}

extension ShishaPlastMassaCell {
    @objc func boshqaButtonTap() {
        if dpTF.backgroundColor == UIColor.systemGray4 {

            boshqaButton.tintColor = .systemBlue
            dpTF.backgroundColor = .white
            ichkiDiametrTF.isHidden = true
        } else {
            boshqaButton.tintColor = .lightGray
            dpTF.backgroundColor = .systemGray4
            ichkiDiametrTF.isHidden = false
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
