//
//  PhotoViewController.swift
//  UserLogin
//
//  Created by Черненко Татьяна Анатольевна on 14.03.2022.
//

import UIKit

class PhotoViewController: UIViewController {

	@IBOutlet var photoView: UIImageView!
	
	var user: User!

	override func viewDidLoad() {
		super.viewDidLoad()
		photoView.image = UIImage(named: user.info.photo)
	}
}

