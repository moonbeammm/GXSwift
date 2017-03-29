//
//  GXPhoneHomeVC.swift
//  GXPhone
//
//  Created by sunguangxin on 2017/3/21.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit
import GXSwiftCore

class GXPhoneHomeVC: GXPhoneBaseTableVC {

    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem.image = UIImage.init(named: "home_home_tab")
        self.tabBarItem.selectedImage = UIImage.init(named: "home_home_tab_s")
        self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been complemented!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testGXSwiftCoreFramework()
        self.view.backgroundColor = UIColor.red
        self.tableView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height - 44)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(UITableViewCell.self), for: indexPath)
        cell.textLabel?.text = "敬请期待!"
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.backgroundColor = UIColor.gray
        return cell
    }

    
    
    func testGXSwiftCoreFramework() {
        let coreTest = GXCoreTest.init()
        coreTest.coreTestMethod()
    }
    
    
    
}
