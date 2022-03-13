//
//  UserInfoViewController.swift
//  UserLogin
//
//  Created by Черненко Татьяна Анатольевна on 14.03.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
	
	@IBOutlet var userInfoLabel: UILabel!
	
	var user: User!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = user.info.fullName
		userInfoLabel.text = user.info.personalInfo
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let photoVC = segue.destination as? PhotoViewController else { return }
		photoVC.user = user
	}
	
}
