//
//  GXPhoneBaseTabBarVC.swift
//  GXPhone
//
//  Created by sunguangxin on 2017/3/21.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit

class GXPhoneBaseTabBarVC: UITabBarController {

    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBar.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been complemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = GXPhoneHomeVC()
        let categoryVC = GXPhoneCategoryVC()
        let searchVC = GXPhoneSearchVC()
        let userVC = GXPhoneUserVC()
        
        self.viewControllers = [homeVC, categoryVC, searchVC, userVC]
    }

}
