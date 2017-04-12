//
//  GXPhoneSearchVC.swift
//  GXPhone
//
//  Created by sunguangxin on 2017/3/21.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit
import GXNetworking

class GXPhoneSearchVC: GXPhoneBaseTableVC {

    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem.image = UIImage.init(named: "home_discovery_tab")
        self.tabBarItem.selectedImage = UIImage.init(named: "home_discovery_tab_s")
        self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been complemented!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // 测试调用网络请求库方法
        self.testGXNetworkingFramework("www.baidu.com")

        self.view.backgroundColor = UIColor.gray
        // Do any additional setup after loading the view.
        self.tableView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height - 44)

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
    
    
    
    
    func testGXNetworkingFramework(_ url: String) {
        let networking = GXNetworking()
        networking.getDataWithUrl(url)
    }

}
