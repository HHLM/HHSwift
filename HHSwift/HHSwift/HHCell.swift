//
//  HHCell.swift
//  HHSwift
//
//  Created by LXH on 2017/3/22.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHCell: UITableViewCell {

    
    typealias HHInt = Int
    
    fileprivate lazy var nameLab:UILabel = {
        
        let nameLab = UILabel.init(frame: CGRect.init(x: 15, y: 12, width: 100, height: 40))
        nameLab.textAlignment = .left
        return nameLab
        
    }()
    
    var person:HHPerson? {
        didSet {
        nameLab.text = person?.name
        self.textLabel?.text = "HHH"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
