//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Рауан Абишев on 15.06.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let upcomingVC = UINavigationController(rootViewController: UpcomingViewController())
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let downloadVC = UINavigationController(rootViewController: DownloadsViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        upcomingVC.tabBarItem.image = UIImage(systemName: "play.circle")
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadVC.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        homeVC.tabBarItem.title = "Home"
        upcomingVC.tabBarItem.title = "Coming Soon"
        searchVC.tabBarItem.title = "Top Search"
        downloadVC.tabBarItem.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeVC,upcomingVC,searchVC,downloadVC], animated: true)
    }


}

