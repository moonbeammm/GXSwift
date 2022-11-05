//
//  API.swift
//  GXSwift
//
//  Created by sgx on 2022/11/5.
//

import Foundation

struct API {
    
    struct Item: Decodable, Encodable {
        let content: String
        var origin_url: String?
    }
    struct Model: Decodable, Encodable {
        let items : [Item]
    }
    
    /// param page: 页码
    /// param count: 每页数量
    /// 糗事百科文本类型列表
    static let textList = "http://m2.qiushibaike.com/article/list/text"
    /// 糗事百科图片类型列表
    static let imgList = "http://m2.qiushibaike.com/article/list/image"
    /// 糗事百科视频类型列表
    static let videoList = "http://m2.qiushibaike.com/article/list/video"
    /// 糗事百科最新类型列表
    static let latestList = "http://m2.qiushibaike.com/article/list/latest"
}
