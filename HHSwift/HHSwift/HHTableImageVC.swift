//
//  HHTableImageVC.swift
//  HHSwift
//
//  Created by LXH on 2017/3/23.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHTableImageVC: UIViewController,UITableViewDataSource,UITableViewDelegate ,UIScrollViewDelegate {


    fileprivate lazy var table:UITableView = {
        let tab = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kWidth, height: kHeight));
        tab.delegate = self
        tab.dataSource = self
        tab.estimatedRowHeight = 60
        tab.rowHeight = UITableViewAutomaticDimension
        tab.separatorInset = UIEdgeInsetsMake(0,15,0,15);
        tab.register(UINib(nibName:"HHImageViewCell", bundle:nil),
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
        let cell:HHImageViewCell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HHImageViewCell
    
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell:HHImageViewCell = tableView.cellForRow(at: indexPath) as! HHImageViewCell
       
        
    }
    

}
