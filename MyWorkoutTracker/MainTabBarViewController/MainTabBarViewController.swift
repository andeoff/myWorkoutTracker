//
//  MainTabBarViewController.swift
//  MyWorkoutTracker
//
//  Created by Andrey on 2/26/23.
//

import UIKit

final class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = UIColor.link
        tabBar.barTintColor = UIColor.gray
    }
    
    private func createViewControllers() {
        let mainViewController = UIViewController()
        let statisticViewController = UIViewController()
        let profileViewController = UIViewController()
        let settingsViewController = UIViewController()
        
        let mainNavigationController = UINavigationController(rootViewController: mainViewController)
        let statisticNavigationController = UINavigationController(rootViewController: statisticViewController)
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        let settingsNavigationController = UINavigationController(rootViewController: settingsViewController)
    }
    
}
