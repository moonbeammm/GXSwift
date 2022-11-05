//
//  HomeViewController.swift
//  GXSwift
//
//  Created by sgx on 2022/11/5.
//

import Foundation
import UIKit
import Alamofire
import MJRefresh
import Kingfisher

class HomeViewController: UIViewController {
    var items = [API.Item]()
    var page = 0
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeImageCell.self, forCellReuseIdentifier: HomeImageCell.description())
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        configSubViews()
        tableView.mj_header?.beginRefreshing()
    }
}

extension HomeViewController {
    private func configSubViews() {
        view.addSubview(tableView)
        tableView.frame = self.view.bounds
        
        let header = MJRefreshNormalHeader { [weak self] in
            AF.request(API.imgList, parameters: ["page": 1,"count":20]).responseData { [weak self] response in
                guard let data = response.value else {
                    return
                }
                
                do {
                    let result = try JSONDecoder().decode(API.Model.self, from: data)
                    print("result",result)
                    
                    self?.items.removeAll()
                    self?.items.append(contentsOf: result.items)
                    self?.page = 1
                } catch {
                    print("error",error)
                }
                
                self?.tableView.reloadData()
                self?.tableView.mj_header?.endRefreshing()
            }
        }
        let footer = MJRefreshAutoNormalFooter { [weak self] in
            guard let self = self else { return }
            AF.request(API.imgList, parameters: ["page": self.page+1,"count":20]).responseDecodable(of: API.Model.self) { [weak self] response in
                if let newItems = response.value?.items {
                    self?.items.append(contentsOf: newItems)
                    self?.page += 1
                } else {
                    print("返回空数据",response.error as Any,response.request as Any)
                }
                self?.tableView.reloadData()
                self?.tableView.mj_footer?.endRefreshing()
            }
        }
        tableView.mj_header = header
        tableView.mj_footer = footer
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(VideoDetailViewController(), animated: true)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeImageCell.description(), for: indexPath)

        let item = items[indexPath.row]
        (cell as? ConfigurableReuseView)?.install(item)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let item = items[indexPath.row]
        return HomeImageCell.height(item)
    }
}
