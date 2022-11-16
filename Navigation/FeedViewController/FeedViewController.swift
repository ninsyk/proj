//
//  FeedViewController.swift
//  Navigation
//
//  Created by playrix on 06.11.2022.
//

import UIKit

class FeedVC: UIViewController {
    
    var dataSource = Post(title: "Название поста")
    
    private let showPostButton: UIButton = {
        let button = UIButton()
        button.setTitle("Читать пост", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(showPostButton)
        showPostButton.backgroundColor = .gray
        showPostButton.frame = CGRect(x: 100, y: 430, width: 120, height: 50)
        addTarget()
    }
    
    func addTarget() {
        showPostButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
    }
    
    @objc
    func tapOnButton() {
        let postView = PostViewController()
        navigationController?.pushViewController(postView, animated: true)
    }
}
