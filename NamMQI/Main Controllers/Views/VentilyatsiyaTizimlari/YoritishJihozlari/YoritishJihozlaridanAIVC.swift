//
//  YoritishJihozlaridanAIVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 14/05/24.
//

import UIKit

class YoritishJihozlaridanAIVC: UIViewController {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray6
        style()
        layout()
        setupNavBar()
    }
    
    func setupNavBar() {
        
        navigationItem.title = "Yoritish jihozlari"
        let navigationBarAppearance = UINavigationBarAppearance()
        
        navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                                                       NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: .bold) ]
        navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.backgroundColor = .white
        navigationItem.standardAppearance = navigationBarAppearance
        navigationItem.compactAppearance = navigationBarAppearance
        navigationItem.scrollEdgeAppearance = navigationBarAppearance
        
        let formula = UIBarButtonItem(image: UIImage(systemName: "questionmark.circle"), style: .plain, target: self, action: #selector(formulaTap))
        
        navigationItem.rightBarButtonItem = formula
        formula.tintColor = .black
    }
    
    @objc func formulaTap() {
        let vc = YoritishJihozBottomSheet()
        if let bottomSheet =  vc.sheetPresentationController {
            bottomSheet.detents = [.medium(), .large()]
        }
        self.navigationController?.present(vc, animated: true)
    }
    
    func style() {
        tableView.backgroundColor = .systemGray6
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(YoritishJihozlaridanAICell.self, forCellReuseIdentifier: YoritishJihozlaridanAICell.identifeir)
    }
    func layout() {
        view.addSubviews(tableView)
        
        tableView.top(view.topAnchor, 0)
        tableView.bottom(view.bottomAnchor, 0)
        tableView.left(view.leftAnchor, 0)
        tableView.right(view.rightAnchor, 0)
    }
}

extension YoritishJihozlaridanAIVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: YoritishJihozlaridanAICell.identifeir, for: indexPath) as? YoritishJihozlaridanAICell else { return UITableViewCell() }
        
        return cell
    }
}
