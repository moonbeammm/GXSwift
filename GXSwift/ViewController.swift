//
//  ViewController.swift
//  GXSwift
//
//  Created by sgx on 2022/10/13.
//

import UIKit

class ViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .gray
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
    }
    
}

class TabBar: UITabBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        /**
         [<_UIBarBackground: 0x7fb291f16480; frame = (0 0; 390 83); userInteractionEnabled = NO; layer = <CALayer: 0x6000028b6e00>>,
         <UITabBarButton: 0x7fb291f18a00; frame = (2 1; 94 48); opaque = NO; layer = <CALayer: 0x6000028f4b20>>,
         <UITabBarButton: 0x7fb291f1b360; frame = (100 1; 93 48); opaque = NO; layer = <CALayer: 0x6000028f4cc0>>,
         <UITabBarButton: 0x7fb291f1c260; frame = (197 1; 94 48); opaque = NO; layer = <CALayer: 0x6000028f4ee0>>,
         <UITabBarButton: 0x7fb291f1d140; frame = (295 1; 93 48); opaque = NO; layer = <CALayer: 0x6000028f5140>>]
         */
        print(subviews)
        
        for subview in subviews where subview is UIControl {
            /**
             <UITabBarButton: 0x7fa12b006ec0; frame = (2 1; 94 48); opaque = NO; layer = <CALayer: 0x60000337ba80>>
             <UITabBarButton: 0x7fa12b02dc00; frame = (100 1; 93 48); opaque = NO; layer = <CALayer: 0x60000331d4a0>>
             <UITabBarButton: 0x7fa12b004880; frame = (197 1; 94 48); opaque = NO; layer = <CALayer: 0x60000331e580>>
             <UITabBarButton: 0x7fa12b02fac0; frame = (295 1; 93 48); opaque = NO; layer = <CALayer: 0x60000337f8a0>>
             */
            print(subview)
            var frame = subview.frame
            // 将item上移2像素
            frame.origin.y -= 2
            subview.frame = frame
        }
    }
    
}

class RootViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValue(TabBar(), forKey: "tabBar")
        tabBar.barTintColor = .white
        

        addChild("首页", "bottom_tabbar_mainhome_normal", "bottom_tabbar_mainhome_selected", HomeViewController.self)
        addChild("动态", "bottom_tabbar_followinghome_normal", "bottom_tabbar_followinghome_selected", DynamicViewController.self)
        addChild("会员购", "bottom_tabbar_mallhome_normal", "bottom_tabbar_mallhome_selected", MallViewController.self)
        addChild("我的", "bottom_tabbar_user_center_normal", "bottom_tabbar_user_center_selected", MineViewController.self)
    }
    
    func addChild(_ title: String,
                  _ image: String,
                  _ selectedImage: String,
                  _ type: UIViewController.Type) {
        let vc = type.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: image)
        vc.tabBarItem.selectedImage = UIImage(named: selectedImage)
        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: .selected)
        addChild(vc)
    }
}


