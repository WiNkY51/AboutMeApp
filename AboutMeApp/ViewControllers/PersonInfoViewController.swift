//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Winky51 on 27.07.2024.
//

import UIKit

final class PersonInfoViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var birdDayLabel: UILabel!
    @IBOutlet var familyStatusLabel: UILabel!
    @IBOutlet var workLabel: UILabel!
    
    @IBOutlet var personImageImageView: UIImageView!
    
    var topColor: UIColor!
    var bottomColor: UIColor!
    
    var name: String!
    var firstName: String!
    var gender: String!
    var age: Int!
    var birdDay: String!
    var familyStatus: String!
    var personImage: String!
    var work: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewController()
    }
    
}

// MARK: - Setup View Controller
extension PersonInfoViewController {
    
    private func setupViewController() {
        
        nameLabel.text = name
        firstNameLabel.text = firstName
        genderLabel.text = gender
        ageLabel.text = String(age)
        birdDayLabel.text = birdDay
        familyStatusLabel.text = familyStatus
        workLabel.text = work
        
        personImageImageView.image = UIImage(named: personImage)
        personImageImageView.layer.cornerRadius = 30
        
        view.addGradientLayer(
            topColor: topColor,
            bottomColor: bottomColor,
            startPosition: (x: 0, y: 0),
            endPosition: (x: 0, y: 1)
        )
    }
    
}
