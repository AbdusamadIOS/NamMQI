//
//  QuvurlarVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/05/24.
//

import UIKit

class QuvurlarVC: UIViewController {

    var collection: UICollectionView!
    
    var categories: [Category] = [Category(image: UIImage(named: "gaz"), title: "Po'lat quvurlar (Gaz)"),
                                  Category(image: UIImage(named: "polat"), title: "Po'lat quvurlar"),
                                  Category(image: UIImage(named: "chugun"), title: "Chugun quvurlar"),
                                  Category(image: UIImage(named: "asbest"), title: "Asbest - sement quvurlar"),
                                  Category(image: UIImage(named: "plastik"), title: "Plastik quvurlar"),
                                  Category(image: UIImage(named: "beton" ), title: "Temir - beton quvurlar"),
                                  Category(image: UIImage(named: "shishaplastik"), title: "Shisha - plastmassa quvurlar"),
                                  Category(image: UIImage(named: "shisha"), title: "Shisha quvurlar"),
                                  Category(image: UIImage(named: "mis"), title: "Mis quvurlar"),
                                  Category(image: UIImage(named: "politelin"), title: "Politetilen quvurlar"),
                                  Category(image: UIImage(named: "metalPolimer"), title: "Metal - polimer quvurlar")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()
        setupColView()
        style()
        layout()
    }
    
    func setupNavBar() {
        
        navigationItem.title = "Quvurlar"
        let navigationBarAppearance = UINavigationBarAppearance()
        
        navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                                                       NSAttributedString.Key.font: UIFont.systemFont(ofSize: 25, weight: .bold) ]
        navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.backgroundColor = .white
        navigationItem.standardAppearance = navigationBarAppearance
        navigationItem.compactAppearance = navigationBarAppearance
        navigationItem.scrollEdgeAppearance = navigationBarAppearance
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
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .systemGray6
    }
    
    func layout() {
        view.addSubview(collection)
        
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            collection.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            collection.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            collection.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        ])
    }
}

// MARK: MainVC collectionView
extension QuvurlarVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainVCCell.identifeir, for: indexPath) as? MainVCCell else { return UICollectionViewCell() }
        
        cell.img.image = categories[indexPath.item].image
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
            let vc2 = ChugunQuvurVC()
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
        
        return CGSize(width: (collectionView.frame.width - 45) / 2, height: 170)
    }
}
