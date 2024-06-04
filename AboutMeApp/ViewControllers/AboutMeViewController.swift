//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Анна Белова on 02.06.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var workPlaceLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    
    @IBOutlet var photo: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        surnameLabel.text = user.person.surname
        nameLabel.text = user.person.name
        workPlaceLabel.text = user.person.company.nameOfCompany
        professionLabel.text  = user.person.company.profession
        photo.image = UIImage(named: user.person.photo)
        fullNameLabel.text = user.person.fullName
        
        photo.layer.cornerRadius = photo.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else {return}
        bioVC.user = user
    }


}
