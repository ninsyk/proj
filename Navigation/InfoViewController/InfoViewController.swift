//
//  InfoViewController.swift
//  Navigation
//
//  Created by playrix on 06.11.2022.
//

import UIKit
class InfoViewController: UIViewController {
    private let newButton: UIButton = {
        let button = UIButton()
        button.setTitle("Сжечь все", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
   
    let alertController = UIAlertController(title: "Вы уверены?", message: "После сжигания ничего не вернуть", preferredStyle: .alert)
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        view.addSubview(newButton)
        newButton.backgroundColor = .purple
        newButton.frame = CGRect(x: 100, y: 130, width: 120, height: 50)
        addTarget()
        setupAlertConfiguration()
    }
    
    func addTarget() {
        newButton.addTarget(self, action: #selector(tapOnNewButton), for: .touchUpInside)
    }
    
    @objc
    func tapOnNewButton() {
        self.present(alertController, animated: true, completion: nil)
    }
    
 
    func setupAlertConfiguration() {
        alertController.addAction(UIAlertAction(title: "Да", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Нет", style: .cancel, handler: nil))
       print("message")
     }
}
