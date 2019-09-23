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
        tab.rowHeight = UITableView.automaticDimension
        tab.separatorInset = UIEdgeInsets(top: 0,left: 15,bottom: 0,right: 15);
//        tab.register(UINib(nibName:"HHImageViewCell", bundle:nil),
//                     forCellReuseIdentifier:"cell")
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
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? HPanCell.init(style: .default, reuseIdentifier: "cell") 
    
        return cell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
       
        let vc =  HHTableAnimationVC()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
