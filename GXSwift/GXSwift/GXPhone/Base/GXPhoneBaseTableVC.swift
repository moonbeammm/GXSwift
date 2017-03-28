//
//  GXPhoneBaseTableVC.swift
//  GXPhone
//
//  Created by sunguangxin on 2017/3/21.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit

class GXPhoneBaseTableVC: GXPhoneBaseVC, UITableViewDelegate, UITableViewDataSource {

    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureSubview()
    }
    
    private func configureSubview() {
        self.configureTableView()
        self.view.addSubview(self.tableView)
    }

    private func configureTableView() {
        self.tableView = UITableView.init(frame: self.view.frame, style: UITableViewStyle.plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self))
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        assert(false, "GXPhoneBaseTableVC has unimplemented method")
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        assert(false, "GXPhoneBaseTableVC has unimplemented method")
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        assert(false, "GXPhoneBaseTableVC has unimplemented method")
        return UITableViewCell.init()
    }

}
