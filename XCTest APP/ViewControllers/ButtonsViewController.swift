//
//  ButtonsViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 14.01.2024.
//

import UIKit
import UserNotifications

class ButtonsViewController: UIViewController {
	
	let notificationCenter = UNUserNotificationCenter.current()

	@IBOutlet weak var textFieldButton: UIButton!

	override func viewDidLoad() {
        super.viewDidLoad()
		textFieldButton.accessibilityIdentifier = "text_field_button"
    }
	@IBAction func alert(_ sender: UIButton, forEvent event: UIEvent) {
		showAlert(title: "Вот тебе алерт!", message: "А боттомшит не хочешь?")
	}
	@IBAction func notification(_ sender: UIButton) {
		sendNotifications()
	}
}

extension ButtonsViewController {
	
	private func showAlert(title: String, message: String) {
		
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		
		let okButton = UIAlertAction(title: "Нет!", style: .default)
		alert.addAction(okButton)
		
		alert.addAction(UIAlertAction(title: "Пох, давай", style: .default, handler: { action in self.showBottomSheet(title: "Получи", message: "На самом деле, это тоже алерт, просто в другом виде")
		}))
		present(alert, animated: true)
	}

	private func showBottomSheet(title: String, message: String) {
		
		let bottomsheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)

		let okButton = UIAlertAction(title: "Прикольно", style: .default)
		bottomsheet.addAction(okButton)
		present(bottomsheet, animated: true)
	}
	
	private func sendNotifications() {
		
		let content = UNMutableNotificationContent()
		content.title = "Уведомляю!"
		content.body = "Вообще это не push-уведомление, push только через сервер, а это локальное"
		content.sound = UNNotificationSound.default
		
		let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 0.01, repeats: false)
		
		let request = UNNotificationRequest(identifier: "notification", content: content, trigger: trigger)
		notificationCenter.add(request){ (error) in
			print(error?.localizedDescription)
		}
	}
}
// TODO: вынести все строки в отдельный файл
