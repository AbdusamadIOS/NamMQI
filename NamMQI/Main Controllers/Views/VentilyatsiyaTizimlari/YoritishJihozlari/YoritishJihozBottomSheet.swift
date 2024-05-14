//
//  YoritishJihozBottomSheet.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 14/05/24.
//

import UIKit

class YoritishJihozBottomSheet: UIViewController {

    let image = UIImageView()
    let formula = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        style()
        layout()
    }
    
    func style() {
        
        image.image = UIImage(named: "yoritishBottom")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        
        formula.text = "Sun'iy yoritish jihozlaridan ajraladigan issiqlik oqimi uning quvvatiga qarab aniqlanadi. Odatda, xonani yoritish uchun mo'ljallangan enyergiya issiqlikka aylanadi va xonaning havosini isitadi deb qabul qilinadi. Agarda yoritishjihozlari quvvati noma'lum bo'lsa ulardan ajraladigan issiqlik, oqimi quyidagi ifodadan aniqlanadi"
        formula.textColor = .black
        formula.font = UIFont.systemFont(ofSize: 17)
        formula.layer.cornerRadius = 10
        formula.clipsToBounds = true
    }
    
    func layout() {
        
        view.addSubviews(image, formula)
        
        image.top(view.topAnchor, 20)
        image.left(view.leftAnchor, 20)
        image.right(view.rightAnchor, -20)
        image.height(150)
        
        formula.top(image.bottomAnchor, 20)
        formula.bottom(view.bottomAnchor, -60)
        formula.left(view.leftAnchor, 20)
        formula.right(view.rightAnchor, -20)
    }
}
