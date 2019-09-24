//
//  HHNavViewController.swift
//  HHSwift
//
//  Created by Now on 2019/9/24.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit

class HHNavViewController: UINavigationController, UINavigationControllerDelegate {
    weak var popDelegate: UIGestureRecognizerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        popDelegate = interactivePopGestureRecognizer?.delegate
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }

    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        if viewController == self.viewControllers.first {
            interactivePopGestureRecognizer?.delegate = popDelegate
        } else {
            interactivePopGestureRecognizer?.delegate = nil
        }
    }

    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 1 {
            if viewController.navigationItem.leftBarButtonItem == nil {
                let btn = UIButton(type: UIButton.ButtonType.custom)
                btn.setImage(UIImage(named: "nav_arrow_back"), for: UIControl.State.normal)
                btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 24, height: 24))
                btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
                let leftBar = UIBarButtonItem(customView: btn)
                viewController.navigationItem.leftBarButtonItem = leftBar
                btn.addTarget(self, action: #selector(hh_popviewController), for: UIControl.Event.touchUpInside)
            }
        }
    }

    // 返回f上个页面
    @objc func hh_popviewController() {
        let vc = viewControllers.last ?? UIViewController()
        let sel = NSSelectorFromString("hh_popBack")
        if vc.responds(to: sel) {
            let imp = vc.method(for: sel)
            typealias HHBackType = @convention(c) (AnyObject, Selector) -> Void
            let back : HHBackType = unsafeBitCast(imp, to: HHBackType.self)
            back(vc,sel)
        }else {
            popViewController(animated: true)
        }
    }
}
