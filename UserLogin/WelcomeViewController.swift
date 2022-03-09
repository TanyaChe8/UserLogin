//
//  WelcomeViewController.swift
//  UserLogin
//
//  Created by Черненко Татьяна Анатольевна on 10.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
	
	@IBOutlet var greetingLabel: UILabel!
	
	var username: String!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		greetingLabel.text = "Welcome, " + username
	}
	
	@IBAction func unwind(for segue: UIStoryboardSegue) {
		guard let loginVC = segue.destination as? LoginViewController else { return }
		loginVC.usernameTF.text = ""
		loginVC.passwordTF.text = ""
	}
	
	@IBAction func logOutButtonPressed(_ sender: Any) {
	}
}
