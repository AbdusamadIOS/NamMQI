//
//  TemirBetonQuvurVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 15/04/24.
//

import UIKit

class TemirBetonQuvurVC: UIViewController {
    
    let tableView = UITableView()
    var categories: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
    }
    
    func style() {
        navigationItem.title = categories?.title
        tableView.backgroundColor = .systemGray6
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(TemirBetonQuvurCell.self, forCellReuseIdentifier: TemirBetonQuvurCell.identifeir)
    }
    func layout() {
        view.addSubviews(tableView)
        
        tableView.top(view.topAnchor, 0)
        tableView.bottom(view.bottomAnchor, 0)
        tableView.left(view.leftAnchor, 0)
        tableView.right(view.rightAnchor, 0)
    }
}

extension TemirBetonQuvurVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TemirBetonQuvurCell.identifeir, for: indexPath) as? TemirBetonQuvurCell else { return UITableViewCell() }
        
        return cell
    }
}
