//
//  BookDetailViewController.swift
//  MyBookCollection
//
//  Created by 방선우 on 2022/07/21.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    static let identifier = "BookDetailViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
   
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(closeButtonClicked))
    }
    
    @objc
    func closeButtonClicked() {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func gowebView(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "WebViewController")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
