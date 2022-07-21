//
//  WebViewController.swift
//  MyBookCollection
//
//  Created by 방선우 on 2022/07/21.
//

import UIKit

class WebViewController: UIViewController {
    static let identifier = "WebViewController"
    var unwindButton: WebViewController = WebViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(webBackButtonClicked))
        
        unwindButton.navigationItem.rightBarButtonItem = UIBarButtonItem(systemItem: .fastForward)
    }
    
    @objc
    func webBackButtonClicked() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func gobackHomeView(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "MyBookCollectionViewController", sender: unwindButton)
    }
}
