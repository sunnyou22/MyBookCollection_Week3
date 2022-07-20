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

class MyBookCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let setionInset:CGFloat = 16
        let width = UIScreen.main.bounds.width / 2 - (spacing + (setionInset * 2))
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
}
