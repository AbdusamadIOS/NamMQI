//
//  WelcomeVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/12/23.
//

import UIKit

class WelcomeVC: UIViewController {

    let imageTop = UIImageView()
    let imageBottom = UIImageView()
    let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        style()
        layout()
    }
    
    func style() {
        
        view.backgroundColor = .white
        imageTop.translatesAutoresizingMaskIntoConstraints = false
        imageTop.image = UIImage(named: "image1")
        imageTop.contentMode = .scaleToFill
        
        imageBottom.translatesAutoresizingMaskIntoConstraints = false
        imageBottom.image = UIImage(named: "bg1")
        imageBottom.contentMode = .scaleToFill
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Boshlash", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .bold)
    }
    
    func layout() {
        view.addSubview(imageTop)
        view.addSubview(imageBottom)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            imageTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            imageTop.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            imageTop.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            imageTop.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            
            imageBottom.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            imageBottom.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            imageBottom.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            imageBottom.topAnchor.constraint(equalTo: imageTop.bottomAnchor, constant: 0),
            
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 60)
        ])
        
    }
    
    @objc func buttonTap() {
        let vc = MainVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
