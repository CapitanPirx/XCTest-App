//
//  webviewViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 23.01.2024.
//

import UIKit
import WebKit

class WebviewViewController: UIViewController {

	@IBOutlet weak var webView: WKWebView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		if let url = URL(string: "https://swiftbook.org/courses/467/") {
			let request = URLRequest(url: url)
			webView.load(request)
		}
    }
}
