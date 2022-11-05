//
//  ConfigurableReuseView.swift
//  GXSwift
//
//  Created by sgx on 2022/11/6.
//

import Foundation
import CoreGraphics.CGBase

protocol ConfigurableReuseView {
    func install(_ model: Any)
    static func height(_ model: Any) -> CGFloat
}
