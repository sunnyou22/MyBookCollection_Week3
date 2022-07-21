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
import Toast

class MyBookCollectionViewController: UICollectionViewController {
    var book = BookInfo()
    
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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(goSearchScreen))
    }
    
    @objc
    func goSearchScreen() {
        let sb = UIStoryboard(name: "Search", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: SearchViewController.identifier)
        let nav = UINavigationController(rootViewController: vc) //
        // 내비게이션 컨트롤러를 어디에 달거냐 -> vc에 달거야
        nav.modalPresentationStyle = .fullScreen
        navigationController?.present(nav, animated: true)
    }
    
    //MARK: 셀 개수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return book.books.count
    }
    
    // MARK: 셀 디자인
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyBookCollectionViewCell", for: indexPath) as! MyBookCollectionViewCell
        let url = URL(string: book.books[indexPath.row].cover)
        let cellIndex = book.books[indexPath.row]
        
        // cell.titleLabel.text = cellIndex.title -> configureCell로 쓴다면? 아래코드
        cell.configureCell(data: cellIndex)
        cell.bookImage.kf.setImage(with: url) // import까먹지 말자
        cell.gradeLabel.text = "\(cellIndex.grade)"
        
        return cell
    }
    
    //MARK: 라이브러리 적용
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyBookCollectionViewCell", for: indexPath) as! MyBookCollectionViewCell
        // 이걸 불러오지 않으면 스토리보드상의 레이블이 나옴
        // 함수는 호출하고 실행하면 메모리에서 해제되기 때문일까
        cell.configureCell(data: book.books[indexPath.row])
        
        self.view.makeToast("\(cell.titleLabel.text!)로 이동합니다", duration: 2, position: .center)
        let sb = UIStoryboard(name: "Main", bundle: nil) // 내가 채택한 스토리보드
        //        let root = sb.instantiateViewController(withIdentifier: "MyBookCollectionViewController")
        let vc = sb.instantiateViewController(withIdentifier: BookDetailViewController.identifier) as! BookDetailViewController
        // 차일드뷰의 identifier을 지정해줘야함
        //        let nav = UINavigationController(rootViewController: root)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
