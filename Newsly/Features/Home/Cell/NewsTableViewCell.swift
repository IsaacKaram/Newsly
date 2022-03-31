//
//  NewsTableViewCell.swift
//  Newsly
//
//  Created by Isaac Karam on 29/03/22.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var newsImage: UIImageView!
    @IBOutlet private weak var newsTitle: UILabel!
    @IBOutlet private weak var newsDescription: UILabel!
    
    func configureCell(imageURL: String?, title: String?, description: String?) {
        newsTitle.text = title
        if let imageURL = imageURL {
            newsImage.setImageWith(url: imageURL)
        }
        newsDescription.text = description
    }
}
