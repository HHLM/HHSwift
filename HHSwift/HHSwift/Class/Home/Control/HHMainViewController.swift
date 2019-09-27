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
    
    var dataArray:Array<Student> = []
    
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
        DLog(HHFileManager.libCachesPath())
        DLog(HHFileManager.cachesPath())
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
        //*!!!:配合方法二
        //table.register(HHBaseTableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //*!!!: 1、系统方法
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
//        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator;
//        cell.textLabel?.text = dataArray[indexPath.row]
//        return cell;
        //*!!!: 2、方法二注册
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator;
//        cell.textLabel?.text = dataArray[indexPath.row]
//        return cell
        //*!!!: 3、方法三
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? HHBaseTableViewCell.init(style: HHBaseTableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator;
        let student = dataArray[indexPath.row]
        cell.textLabel?.text = student.name
        return cell;
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DLog(indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
        let vc =  HHRxSwiftListViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
//FIXME:获取数据
extension HHMainViewController {
    func getData()  {
        for index in 0..<10 {
            let student = Student.init(name: "长江\(index)号", age: 10)
            dataArray.append(student)
        }
    }
}

//FIXME:懒加载
extension HHMainViewController {
    
}
