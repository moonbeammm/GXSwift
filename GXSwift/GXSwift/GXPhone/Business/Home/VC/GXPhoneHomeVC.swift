//
//  GXPhoneHomeVC.swift
//  GXPhone
//
//  Created by sunguangxin on 2017/3/21.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit

class GXPhoneHomeVC: GXPhoneBaseVC {

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
        self.view.backgroundColor = UIColor.red
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    

    
    
    
}
