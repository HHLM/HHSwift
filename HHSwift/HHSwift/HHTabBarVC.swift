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
        let nav3 =  UINavigationController(rootViewController: third)
        nav3.tabBarItem = UITabBarItem(title: "二级", image: UIImage.init(named: "ic_main_mine_selected"), selectedImage: UIImage.init(named: "ic_main_mine_selected"))
        
        let forth = ForthViewController()
        let nav4 =  UINavigationController.init(rootViewController: forth)
        nav4.tabBarItem = UITabBarItem.init(title: "三级", image: UIImage.init(named: "ic_main_mine_selected"), selectedImage: UIImage.init(named: "ic_main_mine_selected"))
        
        let items = [nav1,nav2,nav3,nav4]
        viewControllers = items
        tabBar.tintColor = kColorRandom()
        tabBar.barTintColor = kColorRandom()
        tabBar.barStyle = .default
        tabBar.isTranslucent = false
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.black,NSFontAttributeName:UIFont.systemFont(ofSize: 12)], for: .normal)
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : kColorRandom(),NSFontAttributeName:UIFont.systemFont(ofSize: 14)], for: .selected)
    }

    func addItem(titel:String ,imgae:String,viewController:UIViewController) {
        viewController.tabBarItem = UITabBarItem.init(title: titel, image: UIImage(named: imgae)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), tag: 0)
        viewController.tabBarItem.image = UIImage(named: imgae)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        viewController.tabBarItem.selectedImage = UIImage.init(named: imgae)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        addChildViewController(viewController)
    }

}
