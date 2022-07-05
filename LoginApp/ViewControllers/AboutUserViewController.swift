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
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
