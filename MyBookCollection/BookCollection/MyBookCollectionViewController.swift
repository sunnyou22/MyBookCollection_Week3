//
//  MyBookCollectionViewController.swift
//  MyBookCollection
//
//  Created by 방선우 on 2022/07/20.
//

/*
 1. 구조체활용
 2. configureCell 메서드
 */

import UIKit
import Kingfisher
class MyBookCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let setionInset: CGFloat = 16
        let width = UIScreen.main.bounds.width - (spacing + (setionInset * 2))
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: setionInset, left: setionInset, bottom: setionInset, right: setionInset)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
    }
    
    //MARK: 셀 개수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let book = BookInfo()
        
        return book.books.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyBookCollectionViewCell", for: indexPath) as! MyBookCollectionViewCell
        let url = URL(string: BookInfo().books[indexPath.row].cover)
        let cellIndex = BookInfo().books[indexPath.row]
        
//        cell.titleLabel.text = cellIndex.title -> configureCell로 쓴다면?
        cell.configureCell(data: cellIndex)
        cell.bookImage.kf.setImage(with: url) // import까먹지 말자
        cell.gradeLabel.text = "\(cellIndex.grade)"
        
        return cell
    }
}
