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
    func configureCell(data: Book) {
        /* 이전 컬러 변경 시도
         let colorList: [UIColor] = [.gray, .blue, .orange, .brown, .purple, .green, .systemGray3, .black, .cyan, .darkGray]
         var selectedBackgroundColor: Set<UIColor> = []
         
         //  1. 집합함수를 썼지만 어차피 4개만 뽑아내는 거라 소용없음
         while selectedBackgroundColor.count < 5 {
         for i in colorList {
         selectedBackgroundColor.insert(i)
         }
         }
         
         */
        
        
        
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        //    원래방식 -> view.backgroundColor = backgroundColor[Int.random(in: 0...backgroundColor.count - 1)]
        //        view.backgroundColor = colorList.randomElement() //  이 방식이 제일 덜 겹침
        /* 2. 셔플로 매번 화면을 킬때마다 랜덤하게 셀의 색이 바뀌도록하려고 햇는데 셀의 갯수가 늘어나면 계속 색상을 셀의 갯수에 맞게
         추가해야하는 어려움이 있음
         view.backgroundColor = backgroundColor[index]
         */
        
        changeColor()
        titleLabel.text = data.title
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.textColor = .systemBackground
        gradeLabel.font = .systemFont(ofSize: 13)
        gradeLabel.textColor = .systemBackground
    }
    
    func changeColor() {
        let r : CGFloat = CGFloat.random(in: 0.2...1)
        let g : CGFloat = CGFloat.random(in: 0.2...1)
        let b : CGFloat = CGFloat.random(in: 0.2...1)
        
        UIButton.animate(withDuration: 0.8) {
            self.view.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
            
        }
    }
}
