//
//  IsitishTizimlariCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 14/05/24.
//

import UIKit

class IsitishTizimlariCell: UITableViewCell {
    
    static let idenyifeir = "IsitishTizimlariCell"
    
    let img = UIImageView()
    let title = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        contentView.backgroundColor = .white
        style()
        layout()
    }
    
    func style() {
        img.contentMode = .scaleToFill
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        
        title.textAlignment = .left
        title.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        title.textColor = .black
        title.numberOfLines = 3
    }
    
    func layout() {
        contentView.addSubviews(img, title)
        
        img.top(contentView.topAnchor, 10)
        img.left(contentView.leftAnchor, 10)
        img.bottom(contentView.bottomAnchor, -10)
        img.height(80)
        img.width(120)
        
        title.top(contentView.topAnchor, 10)
        title.right(contentView.rightAnchor, -10)
        title.left(img.rightAnchor, 15)
        title.bottom(contentView.bottomAnchor, -10)
        
    }
}
