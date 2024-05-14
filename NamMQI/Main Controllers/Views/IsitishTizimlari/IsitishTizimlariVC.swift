//
//  IsitishTizimlariVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 14/05/24.
//

import UIKit

class IsitishTizimlariVC: UIViewController {

    let tableView = UITableView()
    
    var categories: [Category] = [Category(image: UIImage(named: "isitish2"), title: "Isitish tizimlarini gidravlik hisobi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
        setupNavBar()
        
    }
    
    func setupNavBar() {
        navigationItem.title = "Isitish tizimlari"
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
    }

    func layout() {
        view.addSubviews(tableView)
        
        tableView.top(view.topAnchor, 0)
        tableView.bottom(view.bottomAnchor, 0)
        tableView.left(view.leftAnchor, 0)
        tableView.right(view.rightAnchor, 0)
    }
}

extension IsitishTizimlariVC: UITableViewDelegate, UITableViewDataSource {
    
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
        
        let vc = IssitishTizimlariGHVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
