//
//  MenuViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 14.01.2024.
//

import UIKit
import UserNotifications

class MenuViewController: UIViewController {
	
	let notificationCenter = UNUserNotificationCenter.current()

// связываем кнопки на сториборде с кодом

	@IBOutlet weak var menuLabel: UILabel!
	@IBOutlet weak var alertButton: UIButton!
	@IBOutlet weak var pushButton: UIButton!
	@IBOutlet weak var textFieldsButton: UIButton!
	@IBOutlet weak var checkBoxesButton: UIButton!
	@IBOutlet weak var datePickerButton: UIButton!
	@IBOutlet weak var webviewButton: UIButton!
	@IBOutlet weak var imageButton: UIButton!

// Вью загружается

	override func viewDidLoad() {
		super.viewDidLoad()

// Назначаем аксессибилити айди нашим элементам на экране (ссылаемся на перечисление AccessibilityIds, там все строки храним для наших айдишников
		
		menuLabel.accessibilityIdentifier = AccessibilityIds.MenuScreen.menuLabel
		alertButton.accessibilityIdentifier = AccessibilityIds.MenuScreen.alertButton
		pushButton.accessibilityIdentifier = AccessibilityIds.MenuScreen.pushButton
		textFieldsButton.accessibilityIdentifier = AccessibilityIds.MenuScreen.textFieldsButton
		checkBoxesButton.accessibilityIdentifier = AccessibilityIds.MenuScreen.checkBoxesButton
		datePickerButton.accessibilityIdentifier = AccessibilityIds.MenuScreen.datePickerButton
		webviewButton.accessibilityIdentifier = AccessibilityIds.MenuScreen.webviewButton
		imageButton.accessibilityIdentifier = AccessibilityIds.MenuScreen.imageButton
    }

// действие при нажатии на кнопку алерт. Выполняется функция showAlert, которая написана ниже в расширении
	
	@IBAction func alert(_ sender: UIButton, forEvent event: UIEvent) {
		showAlert(title: "Вот тебе алерт!", message: "А боттомшит не хочешь?")
	}

// действие при нажати на кнопку push

	@IBAction func notification(_ sender: UIButton) {
		sendNotifications()
	}
}

// запилим расширение для нашего вью контроллера в котором добавим функции показа алерта и боттомшита, а так же функцию показа уведомлений

extension MenuViewController {
	
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
		}
	}
}
// TODO: вынести все строки в enum
