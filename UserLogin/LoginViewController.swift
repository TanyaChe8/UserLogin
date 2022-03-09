//
//  LoginViewController.swift
//  UserLogin
//
//  Created by Черненко Татьяна Анатольевна on 10.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
	
	@IBOutlet var usernameTF: UITextField!
	@IBOutlet var passwordTF: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let WelcomeVC = segue.destination as? WelcomeViewController else { return }
		WelcomeVC.username = usernameTF.text
	}
	
	@IBAction func passwordFillingStarted(_ sender: Any) {
		passwordTF.isSecureTextEntry = true
	}
	
	@IBAction func LoginButtonPressed(_ sender: Any) {
		if usernameTF.text == "" || passwordTF.text == "" {
			showLoginAlert(title: "Not all fields are filled", message: "Please enter username and password")
		} else if usernameTF.text != "User" || passwordTF.text != "qwerty" {
			showLoginAlert(title: "Incorrect username or password", message: "Please try again")
		} else {
			return
		}
	}

	@IBAction func usernameHelpButtonTapped(_ sender: Any) {
		showHelpAlert(title: "Help", message: "Username – User")
	}
	
	@IBAction func passwordHelpButtonTapped(_ sender: Any) {
		showHelpAlert(title: "Help", message: "Password – qwerty")
	}
	
}

// MARK: - Private Methods
extension LoginViewController {
	private func showLoginAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "OK", style: .default) { _ in
			self.usernameTF.text = ""
			self.passwordTF.text = ""
		}
		alert.addAction(okAction)
		present(alert, animated: true)
	}
	
	private func showHelpAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "OK", style: .default)
		alert.addAction(okAction)
		present(alert, animated: true)
	}
}
