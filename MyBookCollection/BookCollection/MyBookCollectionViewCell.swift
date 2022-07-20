//
//  MyBookCollectionViewCell.swift
//  MyBookCollection
//
//  Created by 방선우 on 2022/07/20.
//

import UIKit

class MyBookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var gradeLabel: UILabel!


func configureCell(data: Book) {
    let backgroundColor: [UIColor] = [.gray, .blue, .orange, .brown, .purple]
    
    view.clipsToBounds = true
    view.layer.cornerRadius = 20
    view.backgroundColor = backgroundColor[Int.random(in: 0...backgroundColor.count - 1)]
    titleLabel.text = data.title
    titleLabel.font = .boldSystemFont(ofSize: 15)
    titleLabel.textColor = .systemBackground
    gradeLabel.font = .systemFont(ofSize: 13)
    gradeLabel.textColor = .systemBackground
    
}
}
