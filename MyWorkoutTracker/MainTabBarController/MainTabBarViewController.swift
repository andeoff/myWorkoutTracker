//
//  MainTabBarViewController.swift
//  MyWorkoutTracker
//
//  Created by Andrey on 2/26/23.
//

import UIKit

enum Tabs: Int {
    case main = 0
    case statistic
    case profile
    case settings
}

final class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        createViewControllers()
    }
    
    private func configure() {
        tabBar.tintColor = UIColor.link
        tabBar.barTintColor = UIColor.gray
        tabBar.backgroundColor = .white
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.layer.masksToBounds = true
        tabBar.layer.cornerRadius = 10
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    private func createViewControllers() {
        let mainViewController = UIViewController()
        let statisticViewController = UIViewController()
        let profileViewController = UIViewController()
        let settingsViewController = UIViewController()
        
        let settingsNavigationController = UINavigationController(rootViewController: settingsViewController)
        
        mainViewController.tabBarItem = UITabBarItem(title: "Main",
                                                     image: Images.main,
                                                     tag: Tabs.main.rawValue)
        statisticViewController.tabBarItem = UITabBarItem(title: "Statistic",
                                                          image: Images.statistic,
                                                          tag: Tabs.statistic.rawValue)
        profileViewController.tabBarItem = UITabBarItem(title: "Profile",
                                                         image: Images.profile,
                                                        tag: Tabs.profile.rawValue)
        settingsNavigationController.tabBarItem = UITabBarItem(title: "Settings",
                                                         image: Images.settings,
                                                         tag: Tabs.settings.rawValue)
        setViewControllers([
            mainViewController,
            statisticViewController,
            profileViewController,
            settingsNavigationController
            ], animated: true)
    }
    
}
