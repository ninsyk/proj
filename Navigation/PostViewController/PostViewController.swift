//
//  PostViewController.swift
//  Navigation
//
//  Created by playrix on 06.11.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var dataSource = Post(title: "Название поста")
    @objc
    func tapButton() {
        let infoView = InfoViewController()
        present(infoView, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = dataSource.title
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Инфо", style: .plain, target: self, action: #selector(tapButton))
        print(#function)
        view.backgroundColor = .gray
    }
}
