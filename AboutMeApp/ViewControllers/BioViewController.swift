//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Анна Белова on 03.06.2024.
//

import UIKit

final class BioViewController: UIViewController {

    
    @IBOutlet var bioTextView: UITextView!
    
    var user: User!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        bioTextView.text = user.person.bio

     
    }


}
