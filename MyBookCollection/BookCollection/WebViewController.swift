//
//  WebViewController.swift
//  MyBookCollection
//
//  Created by 방선우 on 2022/07/21.
//

import UIKit

class WebViewController: UIViewController {
    static let identifier = "WebViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(webBackButtonClicked))
    }
    
    @objc
    func webBackButtonClicked() {
        self.navigationController?.popViewController(animated: true)
    }
}
