//
//  AppDelegate.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 13.01.2024.
//

import UIKit
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	let notificationCenter = UNUserNotificationCenter.current()

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		notificationCenter.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error)
			in
			
			guard granted else { return }
			self.notificationCenter.getNotificationSettings { (settings) in
				print(settings)
				guard settings.authorizationStatus == .authorized else { return }
			}
		}
		notificationCenter.delegate = self
		return true
	}
}
extension AppDelegate: UNUserNotificationCenterDelegate {
	func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
		completionHandler([.banner, .sound, .badge])
		print(#function)
	}
	
	func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
		print(#function)
	}
}
