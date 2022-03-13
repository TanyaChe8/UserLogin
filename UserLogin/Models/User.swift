//
//  User.swift
//  UserLogin
//
//  Created by Черненко Татьяна Анатольевна on 14.03.2022.
//

struct User {
	let username: String
	let password: String
	let info: Info
	
	static func getUser() -> User {
		User(
			username: "User",
			password: "qwerty",
			info: .getInfo()
		)
	}
}

struct Info {
	let name: String
	let surname: String
	let personalInfo: String
	let photo: String
	
	var fullName: String {
		name + " " + surname
	}
	
	static func getInfo() -> Info {
		Info(
			name: "Tatiana",
			surname: "Chernenko",
			personalInfo: "My name is Tatiana Chernenko and i'm siberian! ❄️",
			photo: "picture"
		)
	}
}
