//
//  HHTableAnimationVC.swift
//  HHSwift
//
//  Created by LXH on 2017/3/23.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHTableAnimationVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    fileprivate lazy var table:UITableView = {
        let tab = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kWidth, height: kHeight));
        tab.delegate = self
        tab.dataSource = self
        tab.estimatedRowHeight = 60
        tab.rowHeight = UITableViewAutomaticDimension
        tab.separatorInset = UIEdgeInsetsMake(0,15,0,15);
        tab.register(UINib(nibName:"HHAnimationCell", bundle:nil),
                                    forCellReuseIdentifier:"cell")
        return tab
    }()
    
    var dict:Dictionary<String,String> = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(table)
        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:HHAnimationCell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HHAnimationCell
        
        if dict[String(indexPath.row)] == "0" {
            
            cell.titleLab.numberOfLines = 0
        }else {
            cell.titleLab.numberOfLines = 1
        }
        
        cell.titleLab.text = "我们都是好孩子\n我们都是好孩子\n我们都是好孩子\n我们都是好孩子\n我们都是好孩子\n我们都是好孩子\n我们都是好孩子\n我们都是好孩子\n我们都是好孩子\n我们都是好孩子"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell:HHAnimationCell = tableView.cellForRow(at: indexPath) as! HHAnimationCell
        tableView.beginUpdates()
        if cell.titleLab.numberOfLines == 0 {
        cell.titleLab.numberOfLines = 1
            dict[String(indexPath.row)] = "1"
        }else {
            cell.titleLab.numberOfLines = 0
            dict[String(indexPath.row)] = "0"
        }
        tableView.endUpdates()
        
    }
}
