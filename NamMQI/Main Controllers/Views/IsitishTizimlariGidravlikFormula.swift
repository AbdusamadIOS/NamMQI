//
//  IsitishTizimlariGidravlikFormula.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/05/24.
//

import Foundation
import UIKit

class IsitishTizimlariGidravlikFormula: UIViewController {
    
    let image = UIImageView()
    let formula = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        style()
        layout()
    }
    
    func style() {
        
        image.image = UIImage(named: "for")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        
        formula.text = "Mo'ljallangan bosim farqi issiq suvning quvurlararo harakatlanishida ishqalanish qarshiligini va mahalliy qarshiliklarni yengishga qoldiqsiz sarf bo'lsin. Bunday ishqalanish qarshiligi suvning quvurlardagi bo'ylam a harakatiga qarshiligi deyiladi va bu qarshilikni aniqlash uchun Darsi-Veysbax formulasidan foydalanish mumkin"
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
