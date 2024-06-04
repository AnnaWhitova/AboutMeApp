//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Анна Белова on 24.05.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var userLabel: UILabel!
    
    @IBOutlet var userNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userLabel.text = user.logIn
        userNameLabel.text = user.person.fullName
        
    }
    
}
