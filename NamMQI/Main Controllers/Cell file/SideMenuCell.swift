//
//  SideMenuCell.swift
//  NamMQI
//
//  Created by Abdusamad Mamasoliyev on 20/12/23.
//

import UIKit

class SideMenuCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
