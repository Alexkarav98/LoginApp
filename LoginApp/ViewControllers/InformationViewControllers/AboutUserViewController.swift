//
//  AboutUserViewController.swift
//  LoginApp
//
//  Created by alexkarav on 05.07.2022.
//

import UIKit

class AboutUserViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var infoAboutUserTF: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "Welcome, \(user.fullName) !"
        if infoAboutUserTF.text == "" {
            infoAboutUserTF.text = "Edit information about you 😔"
            infoAboutUserTF.sizeToFit()
        }
        infoAboutUserTF.font = infoAboutUserTF.font.withSize(20)
    }

    
    //MARK: Nafigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InformationAboutUserViewController else { return }
        infoVC.user = user
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let aboutUserVC = segue.source as? InformationAboutUserViewController else { return }
        infoAboutUserTF.text = aboutUserVC.user.information
    }
    
}
