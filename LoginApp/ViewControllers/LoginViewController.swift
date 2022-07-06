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
    
    private let user = User(login: "User", password: "User123")

    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.fullName =  user.fullName
            } else if let secondVC = viewController as? AboutUserViewController {
                secondVC.user = user
            }
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }

    //MARK: IBActions
    @IBAction func loginButtonPressed(_ sender: Any) {
        if loginTF.text == "" || passwordTF.text == "" {
            showAllert(title: "Password or login is empty",
                       message: "Please, insert your login or password")
        } else if loginTF.text != user.login || passwordTF.text != user.password {
            showAllert(title: "Invalid login or password",
                       message: "Please enter correct login and password",
                       textField: passwordTF)
        }
    }
    
    // MARK: Hide keyboard aftertouches
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotUNButtonPressed() {
        showAllert(title: "Hi, Mate!", message: "Your name is \(user.login)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAllert(title: "Hi, Mate!", message: "Your password is \(user.password)")
    }
    
    //MARK: Private functions
    private func showAllert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}




