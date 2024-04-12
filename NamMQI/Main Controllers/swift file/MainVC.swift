//
//  MainVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/12/23.
//

import UIKit
import SafariServices

class MainVC: UIViewController {

    @IBOutlet weak var contaneirView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var categories: [Category] = [Category(title: "Isitish tizimlarini gidravlik hisobi", image: UIImage(named: "isitish"), blur: true),
                                  Category(title: "Turar joy binolarining ventilyatsiyasini hisoblash", image: UIImage(named: "ventil"), blur: false),
                                  Category(title: "Turar joy binolarining gaz quvurlarini hisoblash", image: UIImage(named: "gaz"), blur: false),
                                  Category(title: "Turar joy binolarining oqova suv quvurlarini hisoblash", image: UIImage(named: "oqova"), blur: false),]
    
    var sideMenues: [SideMenu] = [SideMenu(title: "Elektron kitoblar", image: UIImage(systemName: "text.book.closed.fill")),
                                  SideMenu(title: "Dasturdan chiqish", image: UIImage(systemName: "rectangle.portrait.and.arrow.forward.fill")),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //UIImage(systemName: "sidebar.squares.left")
        setupNavBar()
        setupCol()
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
        tableView.register(UINib(nibName: "SideMenuCell", bundle: nil), forCellReuseIdentifier: "SideMenuCell")
        
    }
    func setupCol() {
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "MainCell", bundle: nil), forCellWithReuseIdentifier: "MainCell")
    }
}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCell
        
        cell.image.image = categories[indexPath.item].image
        cell.title.text = categories[indexPath.item].title
        
        if categories[indexPath.item].blur == true {
            cell.blurView.isHidden = true
            cell.lockBtn.isHidden = true
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = CGSize(width: (view.frame.width - 60) / 2, height: 185)
        
        return size
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if categories[indexPath.item].blur == true {
            
            let calcultion = CalculationVC(nibName: "CalculationVC", bundle: nil)
            
            self.navigationController?.pushViewController(calcultion, animated: true)
        }
    }
}

extension MainVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideMenues.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell" ) as! SideMenuCell
        
        cell.img.image = sideMenues[indexPath.row].image
        cell.title.text = sideMenues[indexPath.row].title
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
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
