//
//  CheckboxesViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 24.01.2024.
//

import UIKit

class SwitchersViewController: UIViewController {

	@IBOutlet weak var swtch1: UISwitch!
	
	@IBOutlet weak var swtch2: UISwitch!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		swtch1.isOn = false
		swtch2.isOn = false
    }

	@IBAction func swichOne(_ sender: UISwitch) {
		swtch2.setOn(false, animated: true)
	}
	@IBAction func swichTwo(_ sender: UISwitch) {
		swtch1.setOn(false, animated: true)
	}
	@IBAction func NextButton(_ sender: Any) {
		showAlert(
			title: "Ошибка!",
			message: "Включите оба свитчера!"
		)
	}
}

extension SwitchersViewController {
	
	private func showAlert(title: String, message: String) {
		
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		
		let okButton = UIAlertAction(title: "Закрыть", style: .default)
		alert.addAction(okButton)
		present(alert, animated: true)
	}
}
