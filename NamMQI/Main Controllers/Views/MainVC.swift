//
//  MainVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/12/23.
//

import UIKit
import SafariServices

class MainVC: UIViewController {
    
    let contaneirView =  UIView()
    var collection: UICollectionView!
    let tableView = UITableView()
    
    var categories: [Category] = [Category(title: "Po'lat quvurlar (Gaz)"),
                                  Category(title: "Po'lat quvurlar"),
                                  Category(title: "Quyma temir quvurlar"),
                                  Category(title: "Asbest - sement quvurlar"),
                                  Category(title: "Plastik quvurlar"),
                                  Category(title: "Temir - beton quvurlar"),
                                  Category(title: "Shisha - plastmassa quvurlar"),
                                  Category(title: "Shisha quvurlar"),
                                  Category(title: "Mis quvurlar"),
                                  Category(title: "Politetilen quvurlar"),
                                  Category(title: "Metal - polimer quvurlar")
    ]
    
    var sideMenues: [SideMenu] = [
        SideMenu(
            title: "Elektron kitoblar",
            image: UIImage(systemName: "text.book.closed.fill")),
        SideMenu(
            title: "Dasturdan chiqish",
            image:UIImage(systemName:"rectangle.portrait.and.arrow.forward.fill")),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupColView()
        style()
        layout()
        setupNavBar()
        setupTableView()
    }
    
    func setupNavBar() {
        
        navigationItem.hidesBackButton = true
        navigationItem.title = "Bo'limlar"
        let navigationBarAppearance = UINavigationBarAppearance()
        
        navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                                                       NSAttributedString.Key.font: UIFont.systemFont(ofSize: 25, weight: .bold) ]
        navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.backgroundColor = .white
        navigationItem.standardAppearance = navigationBarAppearance
        navigationItem.compactAppearance = navigationBarAppearance
        navigationItem.scrollEdgeAppearance = navigationBarAppearance
        
        let menu = UIBarButtonItem(image: UIImage(systemName: "sidebar.squares.left"), style: .done, target: self, action: #selector(menuBtn))
        
        navigationItem.leftBarButtonItem = menu
        menu.tintColor = .black
    }
    
    @objc func menuBtn() {
        
        if contaneirView.isHidden == true {
            contaneirView.isHidden = false
            tableView.isHidden = false
            self.contaneirView.frame = CGRect(x: 0, y: 0, width: 0, height: Int(self.view.frame.height))
            self.tableView.frame = CGRect(x: 0, y: 0, width: 0, height: Int(self.view.frame.height))
            UIView.animate(withDuration: 0.4) {
                self.contaneirView.frame = CGRect(x: 0, y: 0, width: (Int(self.view.frame.width) / 2), height: Int(self.view.frame.height))
                self.tableView.frame = CGRect(x: 0, y: 0, width: (Int(self.view.frame.width) / 2), height: Int(self.view.frame.height))
            }
        } else {
            
            contaneirView.isHidden = true
            tableView.isHidden = true
            self.contaneirView.frame = CGRect(x: 0, y: 0, width: 0, height: Int(self.view.frame.height))
            self.tableView.frame = CGRect(x: 0, y: 0, width: 0, height: Int(self.view.frame.height))
            UIView.animate(withDuration: 1) {
                self.contaneirView.frame = CGRect(x: 0, y: 0, width: (Int(self.view.frame.width) / 2), height: Int(self.view.frame.height))
                self.tableView.frame = CGRect(x: 0, y: 0, width: (Int(self.view.frame.width) / 2), height: Int(self.view.frame.height))
            }
        }
    }
    
    func setupTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(SideMenuCell.self, forCellReuseIdentifier: SideMenuCell.identifeir)
    }
    
    func setupColView() {
        
        let layout = UICollectionViewFlowLayout()
        collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.delegate = self
        collection.dataSource = self
        collection.register(MainVCCell.self, forCellWithReuseIdentifier: MainVCCell.identifeir)
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    }
    
    func style() {
        
        contaneirView.isHidden = true
        tableView.isHidden = true
        contaneirView.translatesAutoresizingMaskIntoConstraints = false
        contaneirView.backgroundColor = .systemGray6
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .systemGray6
    }
    
    func layout() {
        view.addSubview(collection)
        view.addSubview(contaneirView)
        contaneirView.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            
            contaneirView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            contaneirView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            contaneirView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            contaneirView.widthAnchor.constraint(equalToConstant: 260),
            
            tableView.topAnchor.constraint(equalTo: contaneirView.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: contaneirView.bottomAnchor, constant: 0),
            tableView.leftAnchor.constraint(equalTo: contaneirView.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: contaneirView.rightAnchor, constant: 0),
            
            collection.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            collection.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            collection.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            collection.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        ])
    }
}

// MARK: SideMenu UiTableView
extension MainVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideMenues.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SideMenuCell.identifeir ) as! SideMenuCell
        
        cell.image.image = sideMenues[indexPath.row].image
        cell.title.text = sideMenues[indexPath.row].title
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let alert = UIAlertController(title: "Elektron kutubxonaga kirmoqchimisiz?", message: nil, preferredStyle: .alert)
            
            let ha = UIAlertAction(title: "Ha", style: .default) { _ in
                if let url = URL(string: "https://t.me/nammqielektronkutubxona") {
                    let safariVC = SFSafariViewController(url: url)
                    self.showDetailViewController(safariVC, sender: self)
                }
            }
            
            let orqaga  = UIAlertAction(title: "orqaga", style: .destructive)
            alert.addAction(orqaga)
            alert.addAction(ha)
            self.present(alert, animated: true)
            
        default:
            
            let alert = UIAlertController(title: "Haqiqatdan ham ilovadan chiqib ketmoqchimisiz?", message: nil, preferredStyle: .alert)
            
            let ha  = UIAlertAction(title: "Ha", style: .default) { _ in
                let out = WelcomeVC(nibName: "WelcomeVC", bundle: nil)
                self.navigationController?.pushViewController(out, animated: true)
            }
            
            let orqaga  = UIAlertAction(title: "Orqaga", style: .destructive)
            alert.addAction(orqaga)
            alert.addAction(ha)
            
            self.present(alert, animated: true)
        }
    }
}

// MARK: MainVC collectionView
extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainVCCell.identifeir, for: indexPath) as? MainVCCell else { return UICollectionViewCell() }
        
        cell.title.text = categories[indexPath.item].title
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.item {
        case 0:
            let vc = PolatQuvurGazVC()
            vc.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc1 = PolatQuvurVC()
            vc1.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc1, animated: true)
        case 2:
            let vc2 = QuymaTemirQuvurVC()
            vc2.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc2, animated: true)
        case 3:
            let vc3 = AsbestSementQuvurVC()
            vc3.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc3, animated: true)
        case 4:
            let vc4 = PlastikQuvurVC()
            vc4.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc4, animated: true)
        case 5:
            let vc5 = TemirBetonQuvurVC()
            vc5.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc5, animated: true)
        case 6:
            let vc6 = ShishaPlastmassaVC()
            vc6.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc6, animated: true)
        case 7:
            let vc7 = ShishaQuvurVC()
            vc7.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc7, animated: true)
        case 8:
            let vc8 = MisQuvurVC()
            vc8.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc8, animated: true)
        case 9:
            let vc9 = PolitetilenQuvurVC()
            vc9.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc9, animated: true)
        default:
            let vc10 = MetalPolimerQuvurVC()
            vc10.categories = categories[indexPath.item]
            navigationController?.pushViewController(vc10, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.frame.width - 45) / 2, height: 90)
    }
}
