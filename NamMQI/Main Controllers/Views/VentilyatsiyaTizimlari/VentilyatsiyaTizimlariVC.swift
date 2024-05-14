//
//  QuvurlarVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/05/24.
//

import UIKit

class VentilyatsiyaTizimlariVC: UIViewController {

    let tableView = UITableView()
    
    var categories: [Category] = [Category(image: UIImage(named: "yoritish"), title: "Yoritish jihozlaridan issiqlik ajralishi"),
                                  Category(image: UIImage(named: "pech"), title: "Pechlardan va boshqa jihozlardan chiqadigan issiqlik oqimi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
        setupNavBar()
        
    }
    
    func setupNavBar() {
        navigationItem.title = "Ventilyatsiya tizimlari"
        let navigationBarAppearance = UINavigationBarAppearance()
        
        navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                                                       NSAttributedString.Key.font: UIFont.systemFont(ofSize: 22, weight: .bold) ]
        navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.backgroundColor = .white
        navigationItem.standardAppearance = navigationBarAppearance
        navigationItem.compactAppearance = navigationBarAppearance
        navigationItem.scrollEdgeAppearance = navigationBarAppearance
    }
    
    func style() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray6
        tableView.register(IsitishTizimlariCell.self, forCellReuseIdentifier: IsitishTizimlariCell.idenyifeir)
        tableView.separatorStyle = .singleLine
    }

    func layout() {
        view.addSubviews(tableView)
        
        tableView.top(view.topAnchor, 0)
        tableView.bottom(view.bottomAnchor, 0)
        tableView.left(view.leftAnchor, 0)
        tableView.right(view.rightAnchor, 0)
    }
}

extension VentilyatsiyaTizimlariVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: IsitishTizimlariCell.idenyifeir, for: indexPath) as? IsitishTizimlariCell else { return UITableViewCell()}
        
        cell.img.image = categories[indexPath.row].image
        cell.title.text = categories[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let vc1 = YoritishJihozlaridanAIVC()
            navigationController?.pushViewController(vc1, animated: true)
       default:
            let vc2 = PechlardanVaBoshqaVC()
            navigationController?.pushViewController(vc2, animated: true)
        }
    }
}
