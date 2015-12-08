//
//  SheduleCell.swift
//  dev.biapp
//
//  Created by Pavel Krai on 30/10/15.
//  Copyright © 2015 Pavel Krai. All rights reserved.
//

import UIKit

class SheduleCell: UITableViewCell {

    @IBOutlet weak var subj: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var sheduleThing: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
