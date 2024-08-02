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
    
    let topColor = UIColor(
        red: 128/255,
        green: 184/255,
        blue: 255/255,
        alpha: 1
    )
    let bottomColor = UIColor(
        red: 232/255,
        green: 173/255,
        blue: 148/255,
        alpha: 1
    )
    
    private let user = User.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = user.name
        passwordTF.text = user.password
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.name, passwordTF.text == user.password else {
            showAlert("Invalid user name or password.", "Please enter correct user name and password.")

            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        tabBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                
                welcomeVC.userName = user.name
                welcomeVC.personName = user.person.name
                welcomeVC.personFirstName = user.person.firstName
                welcomeVC.topColor = topColor
                welcomeVC.bottomColor = bottomColor
                
            } else if let personInfoVC = viewController as? PersonInfoViewController {
                
                personInfoVC.name = user.person.name
                personInfoVC.firstName = user.person.firstName
                personInfoVC.gender = user.person.gender
                personInfoVC.age = user.person.age
                personInfoVC.birdDay = user.person.birdDay
                personInfoVC.familyStatus = user.person.familyStatus
                personInfoVC.personImage = user.person.personPhoto
                personInfoVC.work = user.person.work
                personInfoVC.topColor = topColor
                personInfoVC.bottomColor = bottomColor
                
            } else if let personDetalInfoVC = viewController as? PersonDetalInfoViewController {
                
                personDetalInfoVC.topColor = topColor
                personDetalInfoVC.bottomColor = bottomColor
                personDetalInfoVC.personInfo = user.person.info
            }
        }
        
    }
    
    @IBAction func showUserInfo(sender: UIButton) {
        
        switch sender.tag {
        case 0:
            showAlert("Your user name: \(user.name)","Pleas enter your user name in text field.")
        default:
            showAlert("Your password: \(user.password)","Pleas enter your password in text field.")
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
        let okAction = UIAlertAction(title: "Ok", style: .default) {_ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
