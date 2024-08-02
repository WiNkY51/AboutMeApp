//
//  PersonDetalInfoViewController.swift
//  AboutMeApp
//
//  Created by Winky51 on 27.07.2024.
//

import UIKit

final class PersonDetalInfoViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!

    var topColor: UIColor!
    var bottomColor: UIColor!
    
    var personInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
        infoLabel.text = personInfo

    }

}
//MARK: -Setup ViewController
extension PersonDetalInfoViewController {
    private func setup() {
        view.addGradientLayer(
            topColor: topColor,
            bottomColor: bottomColor,
            startPosition: (x: 0, y: 0),
            endPosition: (x: 1, y: 1)
        )
    }
}
