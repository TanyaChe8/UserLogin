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
	
	private let user = "User"
	private let password = "qwerty"
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
		welcomeVC.user = user
	}
	
	@IBAction func LoginButtonPressed() {
		guard usernameTF.text == user, passwordTF.text == password else {
			showAlert(
				title: "Invalid login or password",
				message: "Please, enter correct login and password",
				textField: passwordTF
			)
			return
		}
		performSegue(withIdentifier: "openWelcomeVC", sender: nil)
	}

	@IBAction func showAuthorizationData(_ sender: UIButton) {
		sender.tag == 0
		? showAlert(title: "Tsss!", message: "Your name is \(user)")
		: showAlert(title: "Tsss!", message: "Your password is \(password)")
	}
	
	@IBAction func unwindSegue(segue: UIStoryboardSegue) {
		usernameTF.text = ""
		passwordTF.text = ""
	}
}

// MARK: - Alert Controller
extension LoginViewController {
	private func showAlert(title: String, message: String, textField: UITextField? = nil) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "OK", style: .default) { _ in
			textField?.text = ""
		}
		alert.addAction(okAction)
		present(alert, animated: true)
	}
}

// MARK: - Keyboard
extension LoginViewController: UITextFieldDelegate {
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event)
		view.endEditing(true)
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		if textField == usernameTF {
			passwordTF.becomeFirstResponder()
		} else {
			LoginButtonPressed()
		}
		return true
	}
}
