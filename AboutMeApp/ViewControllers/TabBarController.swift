//
//  TabBarController.swift
//  AboutMeApp
//
//  Created by Анна Белова on 03.06.2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }

}
