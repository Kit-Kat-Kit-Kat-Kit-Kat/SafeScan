//
//  NewsTableViewCell.swift
//  Product Scanner
//
//  Created by Ridhima Morampudi on 2/6/22.
//  Copyright © 2022 Google Inc. All rights reserved.
//

/*import Foundation
import UIKit

class NewsTableViewCellViewModel {
    let title: String
    let subtitle: String
    let imageURL: URL?
    var imageData: Data? = nil
    
     init(
        title: String,
        subtitle: String,
        imageURL: URL?
    ) {
        self.title = title
        self.subtitle = subtitle
        self.imageURL = imageURL
        
    }
}

class NewsTableViewCell : UITableViewCell {
    
    static let identifier = "NewsTableViewCell"
    
    private let newsTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont (ofSize: 25, weight: .medium)
        return label
    }()
    
        private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let newsImageVeiw: UIImageView = {
        let imageView = UIImageView ()
        imageView.backgroundColor = .systemRed
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(newsTitleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(newsImageVeiw)
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func layoutSubviews () {
        super.layoutSubviews ()
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        newsTitleLabel.frame = CGRect(x: 10, y: 0, width: contentView.frame.size.width - 120, height: contentView.frame.size.height/2)
    }
    func configure(with viewModel:NewsTableViewCellViewModel ) {
        
        newsTitleLabel.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle
        
        // Image
        if let data = viewModel.imageData {
            newsImageVeiw.image = UIImage(data: data)
        }
        else {
        //fetch
        }
        
    }
    
}
*/
