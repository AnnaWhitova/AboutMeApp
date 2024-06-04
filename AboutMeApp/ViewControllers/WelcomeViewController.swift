//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Анна Белова on 24.05.2024.
//

import UIKit

final class WelcomeViewController: UITabBarController {
    
    @IBOutlet var userLabel: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userLabel.text = user

    }

}
