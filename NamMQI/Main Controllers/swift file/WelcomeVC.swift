//
//  WelcomeVC.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/12/23.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var conteneirView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var singUpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        conteneirView.layer.cornerRadius = 20
        singUpBtn.layer.cornerRadius = 15
        mainLbl.layer.cornerRadius = 15
        image.layer.cornerRadius = 20
        mainLbl.clipsToBounds = true
        
    }
    
    @IBAction func singUpBtn(_ sender: UIButton) {
        
        let sing = MainVC(nibName: "MainVC", bundle: nil)
        
        self.navigationController?.pushViewController(sing, animated: true)
    }
    

}
