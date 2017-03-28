//
//  GXPhoneSearchVC.swift
//  GXPhone
//
//  Created by sunguangxin on 2017/3/21.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit

class GXPhoneSearchVC: GXPhoneBaseVC {

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
        self.view.backgroundColor = UIColor.gray
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
