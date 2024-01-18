//
//  DatePickerViewController.swift
//  XCTest APP
//
//  Created by Маташнёв Павел Анатольевич on 18.01.2024.
//

import UIKit

class DatePickerViewController: UIViewController {
	
	var zodiac = "Ты почему сразу кнопки жмешь, ты что тестировщик??"
	@IBOutlet weak var zodiacTaxtView: UITextView!
	

	override func viewDidLoad() {
        super.viewDidLoad()
		zodiacTaxtView.isHidden = true
		
    }
    
	@IBAction func dateResultButton(_ sender: UIButton) {
		zodiacTaxtView.text = "\(zodiac)"
		zodiacTaxtView.isHidden = false
		
	}
	@IBAction func datePicker(_ sender: UIDatePicker) {
		
		var date = sender.date
		
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy"
		let formatedDate = dateFormatter.string(from: date)
		let intDate = Int(formatedDate)
		
		switch intDate {
		case 2020, 2008, 1996, 1984, 1972, 1960, 1948, 1936:
			zodiac = "Ля ты крыыса!"
		case 2021, 2009, 1997, 1985, 1973, 1961, 1949, 1937:
			zodiac = "Хоть ты и бык - знай на кого быкуешь"
		case 2022, 2010, 1998, 1986, 1974, 1962, 1950, 1938:
			zodiac = "Хоть ты и тигор, но в душе все равно кот"
		case 2023, 2011, 1999, 1987, 1975, 1963, 1951, 1939:
			zodiac = "Кролик, это не только ценный мех!"
		case 2024, 2012, 2000, 1988, 1976, 1964, 1952, 1940:
			zodiac = "Это тебя сфотографировали для логотипа мортал комбат?"
		case 2013, 2001, 1989, 1977, 1965, 1953, 1941:
			zodiac = "Каково змее без рук и ног?"
		case 2014, 2002, 1990, 1978, 1966, 1954, 1942:
			zodiac = "Деточка, все мы немножко лошади, каждый из нас по-своему лошадь"
		case 2015, 2003, 1991, 1979, 1967, 1955, 1943:
			zodiac = "Не спеши, коза, все волки твои будут"
		case 2016, 2004, 1992, 1980, 1968, 1956, 1944:
			zodiac = "Monkey testing - твоя стихия!"
		case 2017, 2005, 1993, 1981, 1969, 1957, 1945:
			zodiac = "Петух, между прочим, символ Франции!"
		case 2018, 2006, 1994, 1982, 1970, 1958, 1946:
			zodiac = "Собака лает, караван идет"
		case 2019, 2007, 1995, 1983, 1971, 1959, 1947:
			zodiac = "Свинья везде грязь найдет!"
		default:
			zodiac = "не обманывай, ты гораздо моложе!"
		}
	}
}
