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

        let first = HHMainViewController()

        let second = SecondViewController()
        
        let third = ThirdViewController()
        
        let forth = ForthViewController()
       
        let items = [addItem(titel: "首页", imgae: "home", selectImage: "home_selected", viewController: first),
                     addItem(titel: "新闻", imgae: "page", selectImage: "page_selected", viewController: second),
                     addItem(titel: "视频", imgae: "video", selectImage: "video_selected", viewController: third),
                     addItem(titel: "收藏", imgae: "like", selectImage: "like_selected", viewController: forth)]
       
        viewControllers = items
        
        //tabBar.tintColor = UIColor.init(white: 0, alpha: 0.8)
        
        tabBar.barTintColor = UIColor.white
        
        tabBar.barStyle = .default
        
        tabBar.isTranslucent = false

    UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.init(white: 0, alpha: 0.8),
                                                      NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)], for: .normal)

    UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.blue,
                                                      NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12)], for: .selected)
        
    }

    func addItem(titel: String, imgae: String,selectImage:String , viewController: UIViewController) -> HHNavViewController {
        viewController.tabBarItem = UITabBarItem.init(title: titel, image:  UIImage(named: imgae)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal),
                                                      selectedImage: UIImage(named: selectImage)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        return HHNavViewController.init(rootViewController: viewController)
    }
}

