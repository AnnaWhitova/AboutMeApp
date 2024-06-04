//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Анна Белова on 24.05.2024.
//

import UIKit

final class LogInViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    private let user = "User"
    private let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = user
        passwordTF.text = password
        
        logInButton.layer.cornerRadius = 15
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        tabBarController.viewControllers?.forEach({ viewController in
            if let userVC = viewController as? WelcomeViewController  {
                userVC.user = userNameTF.text
            } else if let myVC = viewController as? AboutMeViewController {
                
            }
            
        })
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user , passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    @IBAction func showLoginAndPassword(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Your User Name", andMessage: user)
        : showAlert(withTitle: "Your password", andMessage: password)
    }
    

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

