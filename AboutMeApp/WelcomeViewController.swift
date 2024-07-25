//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Winky51 on 25.07.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(userName)!"
    }

}
