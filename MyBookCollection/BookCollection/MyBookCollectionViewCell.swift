//
//  MyBookCollectionViewCell.swift
//  MyBookCollection
//
//  Created by 방선우 on 2022/07/20.
//

import UIKit

class MyBookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var gradeLabel: UILabel!


func configureCell(data: Book) {
    titleLabel.text = data.title
    titleLabel.font = .boldSystemFont(ofSize: 15)
    titleLabel.textColor = .systemBackground
    gradeLabel.font = .systemFont(ofSize: 13)
    gradeLabel.textColor = .systemBackground
    
}
}
