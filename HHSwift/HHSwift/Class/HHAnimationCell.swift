//
//  HHAnimationCell.swift
//  HHSwift
//
//  Created by LXH on 2017/3/23.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHAnimationCell: UITableViewCell {

    @IBOutlet weak var titleLab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        self.textLabel?.font = UIFont.systemFont(ofSize: 14)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func HHH() {
        print("KKKKK")
    }
}
