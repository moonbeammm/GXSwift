//
//  TestViewController.swift
//  GXSwift
//
//  Created by sgx on 2022/10/13.
//

import Foundation
import UIKit


class TestViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}


//enum R {
//    enum image {
//        static var logo = UIImage(named: "logo")
//    }
//    enum font {
//        static func arial(_ size: CGFloat) -> UIFont? {
//            UIFont(name: "Arial", size: size)
//        }
//    }
//}
//
//class TestViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let img = R.image.logo
//        let font = R.font.arial(12)
//    }
//}



//enum R {
//    enum string: String {
//    case add = "添加"
//    }
//    enum image: String {
//    case logo
//    }
//}
//extension UIImage {
//    convenience init?(_ name: R.image) {
//        self.init(named: name.rawValue)
//    }
//}
//extension UIButton {
//    func setTitle(_ title: R.string, for state: UIControl.State) {
//        setTitle(title.rawValue, for: state)
//    }
//}
//
//class TestViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .blue
//        let img = UIImage(R.image.logo)
//        let btn = UIButton(type: .custom)
//        btn.setTitle(R.string.add, for: .normal)
//    }
//}

// MARK - extension

//class Person {
//
//}
//
//extension Person {
//    // 这里的age_key只是为了取地址值,所以用Bool类型或者Void只占1个字节更省内存
//    // private static var age_key: Bool = false
//    private static var age_key: Void?
//    var age: Int? {
//        get {
//            guard let value = objc_getAssociatedObject(self, &Person.age_key) as? Int else {
//                return nil
//            }
//            return value
//        }
//        set {
//            objc_setAssociatedObject(self, &Self.age_key, newValue, .OBJC_ASSOCIATION_ASSIGN)
//        }
//    }
//}
//
//class TestViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .blue
//
//        let p = Person()
//        print(p.age ?? 0)    // 0
//        print(p.age as Any)  // nil
//        p.age = 100
//        print(p.age ?? 0)    // 100
//        print(p.age as Any)  // Optional(100)
//    }
//}


// MARK - KVC KVO

//class Observer: NSObject {
//    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        print("observeValue",change?[.newKey] as Any)
//    }
//    deinit {
//        print("Observer deinit")
//    }
//}
//class Student: NSObject {
//    @objc dynamic var age: Int = 0
//    deinit {
//        print("Student deinit")
//    }
//}
//class Person: NSObject {
//    @objc dynamic var name: String = "sgx"
//    var observer: Observer = Observer()
//    var stu: Student = Student()
//    var stuObservation: NSKeyValueObservation?
//    var selfObservation: NSKeyValueObservation?
//    override init() {
//        super.init()
//        // 对应oc写法: [self.stu addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
//        stu.addObserver(self, forKeyPath: "age", options: .new, context: nil)
//        self.addObserver(self, forKeyPath: "name", options: .new, context: nil)
//
//        // 让observer接收变更消息
//        self.addObserver(observer, forKeyPath: "name", options: .new, context: nil)
//
//        // 通过闭包接收变更消息
//        stuObservation = stu.observe(\Student.age, options: .new) {
//            print("123",$0,$1)
//        }
//        selfObservation = observe(\Self.name, options: .new, changeHandler: {
//            print("321",$0,$1)
//        })
//
//    }
//    deinit {
//        print("Person deinit")
//        // 对应oc写法: [self.stu removeObserver:self forKeyPath:@"age" context:nil];
////        stu.removeObserver(self, forKeyPath: "age")
////        self.removeObserver(self, forKeyPath: "name")
////        self.removeObserver(observer, forKeyPath: "name")
//
////        stuObservation = nil
////        selfObservation = nil
//    }
//    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        print("observeValue",change?[.newKey] as Any)
//    }
//}

//class TestViewController: UIViewController {
//    var p: Person? = Person()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .blue
//
//        p?.name = "yt"
//        // observeValue Optional(yt)
//        // observeValue Optional(yt)
//
//        p?.setValue("ss", forKey: "name")
//        // observeValue Optional(ss)
//        // observeValue Optional(ss)
//
//        p?.stu.age = 40
//        // observeValue Optional(40)
//    }
//}
