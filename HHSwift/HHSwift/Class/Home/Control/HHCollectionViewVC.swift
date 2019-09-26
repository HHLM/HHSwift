//
//  HHCollectionViewVC.swift
//  HHSwift
//
//  Created by Mac on 2018/4/30.
//  Copyright © 2018年 HHLM. All rights reserved.
//

import UIKit

class HHCollectionViewVC: HHBaseVC,UICollectionViewDelegate {

    var hh_collectionView : UICollectionView? = nil
    
    override func viewDidLoad() {

        super.viewDidLoad()
        view.addSubview(self.collectionView)
        self.collectionView.delegate = self

    }


    fileprivate lazy var collectionView:UICollectionView = {
        let layout = UICollectionViewLayout.init()
        let c_view = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: layout)
        return c_view
    }()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
    
}
