//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by alexkarav on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeTextLabel: UILabel!
    
    var fullName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextLabel.text = "Welcome, \(fullName ?? "Undefined") !"
    }
    
}
