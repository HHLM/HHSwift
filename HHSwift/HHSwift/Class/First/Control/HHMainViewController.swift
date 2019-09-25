//
//  HHMainViewController.swift
//  HHSwift
//
//  Created by Now on 2019/9/25.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit

class HHMainViewController: HHBaseVC {

    lazy var table:UITableView = UITableView()
    
    var dataArray:Array<String> = []
    
    //懒加载
    fileprivate lazy var headView:UIView = {
        let headView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: kWidth, height: 240))
        headView.backgroundColor = UIColor.cyan
        return headView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        config()
        setupUI()
    }
    
}

//MARK:更新UI
extension HHMainViewController: UITableViewDataSource,UITableViewDelegate {
    
    func config() {
        navigationItem.title = "首页"
    }
    
    func setupUI() {
        table.frame = view.bounds
        table.delegate = self
        table.dataSource = self
        table.tableHeaderView = headView
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator;
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell;
    }
}
//FIXME:获取数据
extension HHMainViewController {
    func getData()  {
        for index in 0..<10 {
            dataArray.append("\(index)"+"H")
        }
    }
}

//FIXME:懒加载
extension HHMainViewController {
    
}
