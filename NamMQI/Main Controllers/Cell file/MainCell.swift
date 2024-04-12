//
//  MainCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 13/12/23.
//

import UIKit

class MainCell: UICollectionViewCell {

    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var lockBtn: UIButton!
    @IBOutlet weak var conteneirView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        image.layer.cornerRadius = 10
        conteneirView.layer.cornerRadius = 10
        blurView.layer.cornerRadius = 10
        blurView.clipsToBounds = true
        
        
    }

}
