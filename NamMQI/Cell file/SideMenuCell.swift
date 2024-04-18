//
//  SideMenuCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 15/04/24.
//

import UIKit

class SideMenuCell: UITableViewCell {

    static let identifeir = "SideMenuCell"
    let image = UIImageView()
    let title = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        style()
        layout()
    }
    
    func style() {
        
        contentView.backgroundColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.systemBlue
        image.contentMode = .scaleToFill
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        title.textColor = .black
    }
    
    func layout() {
        contentView.addSubview(image)
        contentView.addSubview(title)
        
        NSLayoutConstraint.activate([
            
            image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            image.heightAnchor.constraint(equalToConstant: 40),
            image.widthAnchor.constraint(equalToConstant: 40),
            
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            title.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10),
            title.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10)
        ])
    }
}
