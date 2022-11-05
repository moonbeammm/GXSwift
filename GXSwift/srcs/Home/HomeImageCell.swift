//
//  HomeImageCell.swift
//  GXSwift
//
//  Created by sgx on 2022/11/6.
//

import UIKit

class HomeImageCell: UITableViewCell {
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    lazy var coverView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(coverView)
        contentView.addSubview(titleLabel)
        coverView.frame = CGRect(x: 10, y: 10, width: 160, height: 90)
        titleLabel.frame = CGRect(x: 180, y: 10, width: 100, height: 20)
    }
}

extension HomeImageCell: ConfigurableReuseView {
    func install(_ model: Any) {
        guard let model = model as? API.Item else { return }
        titleLabel.text = model.content
        if let originUrl = model.origin_url {
            coverView.kf.setImage(with: URL(string: originUrl)) { result in
                print(result)
            }
        } else {
            coverView.image = nil
        }
    }
    static func height(_ model: Any) -> CGFloat {
        110
    }
}
