//
//  AboutUserViewController.swift
//  LoginApp
//
//  Created by alexkarav on 05.07.2022.
//

import UIKit

class AboutUserViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    var fullName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "Welcome, \(fullName ?? "Undefined User") !"
    }

}
