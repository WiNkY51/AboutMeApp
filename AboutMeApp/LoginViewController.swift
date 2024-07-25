//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Winky51 on 24.07.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let name = "Admin"
    private let password = "admin"
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == name, passwordTF.text == password else {
            showAlert("Invalid user name or password.", "Please enter correct user name and password.")
            passwordTF.text = ""
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = name
    }
    
    @IBAction func showUserInfo(sender: UIButton) {
        
        switch sender.tag {
        case 0:
            showAlert("Your user name: \(name)",
                      "Pleas enter your user name in text field.")
        default:
            showAlert("Your password: \(password)",
                      "Pleas enter your password in text field.")
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    private func showAlert(_ title: String, _ message: String){
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - Extension LoginViewController
extension LoginViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
}
