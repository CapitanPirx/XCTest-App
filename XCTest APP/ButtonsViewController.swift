//
//  ButtonsViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 14.01.2024.
//

import UIKit

class ButtonsViewController: UIViewController {

	@IBOutlet weak var textFieldButton: UIButton!

	override func viewDidLoad() {
        super.viewDidLoad()
    }
	@IBAction func alert(_ sender: UIButton, forEvent event: UIEvent) {
		showAlert(title: "Вот тебе алерт!", message: "А боттомшит не хочешь?")
	}
	
}

extension ButtonsViewController {
	
	private func showAlert(title: String, message: String) {
		
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		
		let okButton = UIAlertAction(title: "Нет!", style: .default)
		alert.addAction(okButton)
		
		alert.addAction(UIAlertAction(title: "Пох, давай", style: .default, handler: { action in self.showBottomSheet(title: "Получи", message: "Распишись")
			
		}))
		present(alert, animated: true)
	}

	private func showBottomSheet(title: String, message: String) {
		
		let bottomsheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)

		let okButton = UIAlertAction(title: "Прикольно", style: .default)
		bottomsheet.addAction(okButton)
		present(bottomsheet, animated: true)
	}
}
