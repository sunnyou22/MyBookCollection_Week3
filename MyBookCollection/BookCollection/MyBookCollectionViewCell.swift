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
    
    //MARK: 중복되는 UI요소 묶기
    func configureCell(data: Book, index: Int) {
        let backgroundColor: [UIColor] = [.gray, .blue, .orange, .brown, .purple, .green, .systemGray3, .black, .cyan, .darkGray]
        var selectedBackgroundColor: Set<UIColor> = []
        
        //1. 색을 안겹치게하기 위해서 집합함수를 썼지만 어차피 4개만뽑아내는 거라서 소용없음
        while selectedBackgroundColor.count < 4{
            for i in backgroundColor {
                selectedBackgroundColor.insert(i)
            }
        }
        
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        // view.backgroundColor = backgroundColor[Int.random(in: 0...backgroundColor.count - 1)]
        // 셔플로 매번 화면을 킬때마다 랜덤하게 셀의 색이 바뀌도록하려고 햇는데 셀의 갯수가 늘어나면 계속 색상을 셀의 갯수에 맞게
        //추가해야하는 어려움이 있음
        view.backgroundColor = backgroundColor[index]
        titleLabel.text = data.title
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.textColor = .systemBackground
        gradeLabel.font = .systemFont(ofSize: 13)
        gradeLabel.textColor = .systemBackground
    }
}
