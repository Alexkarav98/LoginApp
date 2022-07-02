//
//  LoginViewController.swift
//  LoginApp
//
//  Created by alexkarav on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let login = "User"
    private let password = "User123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.login = login
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is LoginViewController else { return }
    }

    //MARK: IBActions
    @IBAction func loginButtonPressed(_ sender: Any) {
        if loginTF.text == "" || passwordTF.text == "" {
            showAllert(title: "Password or login is empty",
                       message: "Please, insert your login or password")
        } else if loginTF.text != login && passwordTF.text != password {
            showAllert(title: "Invalid login or password",
                       message: "Please enter correct login and password",
                       textField: passwordTF)
        } else if loginTF.text == login && passwordTF.text == password {
            
        }
        
    }
    
    @IBAction func forgotUNButtonPressed() {
        showAllert(title: "Hi, Mate!", message: "Your name is \(login)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAllert(title: "Hi, Mate!", message: "Your password is \(password)")
    }
    
    //MARK: Private functions
    private func showAllert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                   textField?.text = ""
               }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: Hide keyboard aftertouches
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

