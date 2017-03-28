//
//  GXPhoneUserVC.swift
//  GXPhone
//
//  Created by sunguangxin on 2017/3/21.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit



class GXPhoneUserVC: GXPhoneBaseVC {
    
    var loginBtn = UIButton.init()
    

    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem.image = UIImage.init(named: "home_user_tab")
        self.tabBarItem.selectedImage = UIImage.init(named: "home_user_tab_s")
        self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been complemented!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow
        // Do any additional setup after loading the view.
        self.createLoginBtn()
    }
    
    private func createLoginBtn() {
        self.loginBtn.backgroundColor = UIColor.red
        self.loginBtn.setTitle("登录", for: UIControlState.normal)
        self.loginBtn.titleLabel?.textColor = UIColor.black
        self.loginBtn.frame = CGRect.init(x: 10, y: 100, width: 100, height: 50)
        self.loginBtn.addTarget(self, action: #selector(loginBtnClick), for: UIControlEvents.touchUpInside)
        self.view.addSubview(self.loginBtn)
    }
    
    @objc private func loginBtnClick() {
        print("loginBtnClick")
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
