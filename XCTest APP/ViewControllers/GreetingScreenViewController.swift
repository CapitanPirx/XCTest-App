//
//  ViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 13.01.2024.
//

import UIKit

class GreetingScreenViewController: UIViewController {

	@IBOutlet weak var greetingView: UITextView!
	@IBOutlet weak var okayButton: UIButton!
	@IBOutlet weak var nextButton: UIButton!
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		hideNextButton()
		setAccessibilityButton(nextButton, AccessibilityIds.GreetingScreen.nextButton)
		setAccessibilityButton(okayButton, AccessibilityIds.GreetingScreen.okayButton)
		greetingView.accessibilityIdentifier = AccessibilityIds.GreetingScreen.greetingMessage
		
	}
	@IBAction func changeGreeting() {
		greetingView.text = "Отлично! Начать?"
		okayButton.isHidden = true
		nextButton.isHidden = false
		
	}

	func hideNextButton() {
		nextButton.isHidden = true
	}
	
	func setAccessibilityButton(_ button: UIButton,_ identifier: String) {
		button.accessibilityIdentifier = identifier
	}
}

