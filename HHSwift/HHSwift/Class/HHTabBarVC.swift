//
//  HHTabBarVC.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let model = cellModel()
        
        print(model.dataArray)
    
        let array = model.dataArray
        
        let mo = array[0]

        
        print(mo ,model.dataArr())
        
        
        
        let first = FirstViewController()

        let nav1 =  UINavigationController.init(rootViewController: first)
        nav1.tabBarItem = UITabBarItem.init(title: "首页", image: UIImage.init(named: "ic_main_mine_selected"), selectedImage: UIImage.init(named: "ic_main_mine_selected"))
        
        let second = SecondViewController()
        let nav2 =  UINavigationController.init(rootViewController: second)
        nav2.tabBarItem = UITabBarItem.init(title: "一级", image: UIImage.init(named: "ic_main_mine_selected"), selectedImage: UIImage.init(named: "ic_main_mine_selected"))
        
        let third = ThirdViewController()
        let nav3 =  UINavigationController.init(rootViewController: third)
        nav3.tabBarItem = UITabBarItem.init(title: "二级", image: UIImage.init(named: "ic_main_mine_selected"), selectedImage: UIImage.init(named: "ic_main_mine_selected"))
        
        let forth = ForthViewController()
        let nav4 =  UINavigationController.init(rootViewController: forth)
        nav4.tabBarItem = UITabBarItem.init(title: "三级", image: UIImage.init(named: "ic_main_mine_selected"), selectedImage: UIImage.init(named: "ic_main_mine_selected"))
        
        let items = [nav1,nav2,nav3,nav4]
        self.tabBar.backgroundColor = .red
        self.viewControllers = items
        self.tabBar.tintColor = UIColor.orange
        
        
        
    }


}
