//
//  TextFieldsViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 23.01.2024.
//

import UIKit

class TextFieldsViewController: UIViewController, UITextFieldDelegate {
	
	@IBOutlet weak var lastNameField: UITextField!
	@IBOutlet weak var phoneNumberField: UITextField!
	@IBOutlet weak var result: UILabel!
	
	var phone: String!
	var lastName: String!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		lastNameField.delegate = self
		phoneNumberField.delegate = self
		let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
		view.addGestureRecognizer(tapGesture)
		
	}
	@IBAction func saveButton(_sender: UIButton) {
		phone = phoneNumberField.text
		lastName = lastNameField.text
		result.text = "\(lastName ?? "") : \(phone ?? "")"
		
	}
	@objc func hideKeyboard() {
		view.endEditing(true)
	}
}
