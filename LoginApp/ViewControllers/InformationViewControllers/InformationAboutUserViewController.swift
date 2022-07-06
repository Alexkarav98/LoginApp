//
//  InformationAboutUserViewController.swift
//  LoginApp
//
//  Created by alexkarav on 06.07.2022.
//

import UIKit

class InformationAboutUserViewController: UIViewController {
    
    
    @IBOutlet weak var editInfoTF: UITextField!
    
    var user: User!
    
    @IBAction func editButtonTapped() {
        user.information = editInfoTF.text ?? ""
    }
}
