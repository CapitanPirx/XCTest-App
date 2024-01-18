//
//  DatePickerViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 18.01.2024.
//

import UIKit

class DatePickerViewController: UIViewController {
	
	var zodiac = "какой то знак"
	@IBOutlet weak var zodiacTaxtView: UITextView!
	

	override func viewDidLoad() {
        super.viewDidLoad()
		zodiacTaxtView.isHidden = true
		
    }
    
	@IBAction func dateResultButton(_ sender: UIButton) {
		zodiacTaxtView.text = "Ну ты \(zodiac), получается."
		zodiacTaxtView.isHidden = false
		
	}
	@IBAction func datePicker(_ sender: UIDatePicker) {
		
		var date = sender.date
		
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd-MM"
		let formatedDate = dateFormatter.string(from: date)
		print(formatedDate)
	}
}
