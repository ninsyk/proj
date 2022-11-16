//
//  File.swift
//  Navigation
//
//  Created by playrix on 06.11.2022.
//

import UIKit
class ProfileViewController: UIViewController {
    
    private let myView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myView)
        view.addSubview(statusButton)
        view.addSubview(avatar)
        view.addSubview(name)
        view.addSubview(status)
        self.title = "Profile"
        self.navigationController?.navigationBar.backgroundColor = .white
    }
    
    override func viewWillLayoutSubviews() {
        myView.frame = view.frame
        myView.backgroundColor = .lightGray
    }
    
    private let statusButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 16, y: 200, width: 300, height: 50))
        button.setTitle("Show status", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }()

    private let avatar: UIImageView = {
        let avatar = UIImageView(frame: CGRect(x: 16, y: 16, width: 90, height: 90))
        avatar.image = UIImage(named: "photo")
        avatar.layer.masksToBounds = true
        avatar.layer.borderColor = UIColor.white.cgColor
        avatar.layer.borderWidth = 3
        avatar.layer.cornerRadius = avatar.bounds.width / 2
        return avatar
    }()

    private let name: UILabel = {
        let profileName = UILabel(frame: CGRect(x: 90, y: 90, width: 200, height: 21))
        profileName.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        profileName.textColor = .black
        profileName.text = "Noname Noname"
        return profileName
    }()
    
    private let status: UITextField = {
        let status = UITextField(frame: CGRect(x: 90, y: 110, width: 90, height: 90))
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.textColor = .gray
        status.text = "Waiting for something..."
        return status
    }()
    
}
