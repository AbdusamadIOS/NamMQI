//
//  MainVCCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 15/04/24.
//

import UIKit

class MainVCCell: UICollectionViewCell {
    
    static let identifeir = "MainVCCell"
    let conteneirView = UIView()
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    func style() {
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        title.textColor = .black
        title.numberOfLines = 3
        
        conteneirView.translatesAutoresizingMaskIntoConstraints = false
        conteneirView.backgroundColor = .white
        conteneirView.layer.cornerRadius = 15
    }
    
    func layout() {
        contentView.addSubview(conteneirView)
        conteneirView.addSubview(title)
        
        NSLayoutConstraint.activate([
        
            conteneirView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            conteneirView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            conteneirView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0),
            conteneirView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0),
            
            title.topAnchor.constraint(equalTo: conteneirView.topAnchor, constant: 10),
            title.rightAnchor.constraint(equalTo: conteneirView.rightAnchor, constant: -5),
            title.leftAnchor.constraint(equalTo: conteneirView.leftAnchor, constant: 5),
            title.bottomAnchor.constraint(equalTo: conteneirView.bottomAnchor, constant: -10)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
