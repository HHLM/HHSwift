//
//  HHImageViewCell.swift
//  HHSwift
//
//  Created by LXH on 2017/3/23.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHImageViewCell: UITableViewCell {

    @IBOutlet weak var hh_imgView: UIImageView!
    @IBOutlet weak var hh_view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
