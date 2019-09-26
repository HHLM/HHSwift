//
//  HHRxSwiftListViewController.swift
//  HHSwift
//
//  Created by Now on 2019/9/26.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit

class HHRxSwiftListViewController: HHBaseVC {

    lazy var table:UITableView = UITableView()
               
   var dataArray:Array<String> = []
    
   override func viewDidLoad() {
       super.viewDidLoad()
       getData()
       config()
       setupUI()
    }
}

//MARK:更新UI
extension HHRxSwiftListViewController: UITableViewDataSource,UITableViewDelegate {
    
    func config() {
        navigationItem.title = "RxSwift使用"
    }
    
    func setupUI() {
        table.frame = view.bounds
        table.delegate = self
        table.dataSource = self
        //*!!!:配合方法二
        table.register(HHBaseTableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //*!!!: 2、方法二注册
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator;
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        DLog(indexPath.row)
        let vc = HHRxSwiftViewController()
        self.navigationController?.pushViewController(vc, animated: true)

    }
}
//FIXME:获取数据
extension HHRxSwiftListViewController {
    func getData()  {
        for index in 0..<10 {
            dataArray.append("\(index)"+"H")
        }
    }
}

