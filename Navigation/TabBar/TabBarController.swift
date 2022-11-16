//
//  TabBarController.swift
//  Navigation
//
//  Created by playrix on 06.11.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    var feedViewController : UINavigationController!
    var profileViewController : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        feedViewController = UINavigationController.init(rootViewController: FeedVC())
        profileViewController = UINavigationController.init(rootViewController: ProfileViewController())
        
        self.viewControllers = [feedViewController, profileViewController]
        let item1 = UITabBarItem(title: "Лента",
                                 image: UIImage(systemName: "newspaper"), tag: 0)
        
        let item2 = UITabBarItem(title: "Профиль",
                                 image:  UIImage(systemName: "person"), tag: 1)
        
        feedViewController.tabBarItem = item1
        profileViewController.tabBarItem = item2
        
        UITabBar.appearance().tintColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = .purple
    }
    
}

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
