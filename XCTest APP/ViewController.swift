//
//  ViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 13.01.2024.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var greetingView: UITextView!
	@IBOutlet weak var okayButton: UIButton!
	@IBOutlet weak var nextButton: UIButton!
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		hideNextButton()
		// Do any additional setup after loading the view.
	}
	@IBAction func changeGreeting() {
		greetingView.text = "Замечательно!"
		okayButton.isHidden = true
		nextButton.isHidden = false
		
	}

	func hideNextButton() {
		nextButton.isHidden = true
	}
}

