//
//  HHBaseTableView.swift
//  HHSwift
//
//  Created by Now on 2019/9/25.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit

class HHBaseTableView: UITableView,UITableViewDelegate,UITableViewDataSource {
   
    

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.delegate = self
        self.dataSource = self
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           1
       }
       
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) ??  UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell");
        cell.textLabel?.text="我是cell"
        return cell
   }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

