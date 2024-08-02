//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Winky51 on 25.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var welcomePersonLabel: UILabel!
    
    var topColor: UIColor!
    var bottomColor: UIColor!
    
    var userName = ""
    var personName = ""
    var personFirstName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientLayer(
            topColor: topColor,
            bottomColor: bottomColor,
            startPosition: (x: 1, y: 0),
            endPosition: (x: 0, y: 1)
        )
        welcomeUserLabel.text = "Привет \(userName)!"
        welcomePersonLabel.text = "Тебя зовут \(personName) \(personFirstName)."
        
    }

}
extension UIView {
    
    func addGradientLayer(
        topColor: UIColor,
        bottomColor: UIColor,
        startPosition: (x: CGFloat, y: CGFloat),
        endPosition: (x: CGFloat, y: CGFloat)
    ) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: startPosition.x, y: startPosition.y)
        gradient.endPoint = CGPoint(x: endPosition.x, y: endPosition.y)
        layer.insertSublayer(gradient, at: 0)
    }
    
}
