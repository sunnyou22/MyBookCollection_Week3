//
//  SearchViewController.swift
//  MyBookCollection
//
//  Created by 방선우 on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    static let identifier = "SearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(searchViewClosedButton))
    }
    
    @objc
    func searchViewClosedButton() {
        dismiss(animated: true)
    }
}
