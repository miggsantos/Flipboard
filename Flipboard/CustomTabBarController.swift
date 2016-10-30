//
//  CustomTabBarController.swift
//  Flipboard
//
//  Created by Miguel Santos on 09/10/2016.
//  Copyright © 2016 Miguel Santos. All rights reserved.
//

import UIKit


class CustomTabBarController: UITabBarController, CustomTabBarDataSource, CustomTabBarDelegate, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.tabBar.isHidden = true
        self.selectedIndex = 0
        self.delegate = self
        
        let customTabBar = CustomTabBar(frame: self.tabBar.frame)
        customTabBar.datasource = self
        customTabBar.delegate = self
        customTabBar.setup()
        
        self.view.addSubview(customTabBar)
    }
    
    // MARK: - CustomTabBarDataSource
    
    func tabBarItemsInCustomTabBar(_ tabBarView: CustomTabBar) -> [UITabBarItem] {
        return tabBar.items!
    }
    
    // MARK: - CustomTabBarDelegate
    
    func didSelectViewController(_ tabBarView: CustomTabBar, atIndex index: Int) {
        self.selectedIndex = index
    }
    
    
}

