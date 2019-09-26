//
//  HHFileManagerViewController.swift
//  HHSwift
//
//  Created by Now on 2019/9/26.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit

class HHFileManagerViewController: HHBaseVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HHFileManagerViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell.init(style:UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        return cell
    }
}
