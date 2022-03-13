//
//  WelcomeViewController.swift
//  UserLogin
//
//  Created by Черненко Татьяна Анатольевна on 10.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
	
	@IBOutlet var greetingLabel: UILabel!
	
	var user = ""
	
	override func viewDidLoad() {
		super.viewDidLoad()
		greetingLabel.text = "Welcome, \(user)!"
	}

}
