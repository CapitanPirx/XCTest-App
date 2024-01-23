
// Тут мы храним все наши айдишники элементов для удобства и будем ссылаться на эти перечисления из кода, когда задаем айди элементу и когда создаем page object'ы для тестов

public enum AccessibilityIds {

	public enum GreetingScreen {

		static let greetingMessage = "GREETING_MESSAGE"
		static let okayButton = "OKAY_BUTTON"
		static let nextButton = "NEXT_BUTTON"
	}
	
	public enum MenuScreen  {
		
		static let menuLabel = "MENU_LABEL"
		static let alertButton = "ALERT_BUTTON"
		static let pushButton = "PUSH_BUTTON"
		static let textFieldsButton = "TEXT_FIELD_BUTTON"
		static let checkBoxesButton = "CHECKBOXES_BUTTON"
		static let datePickerButton = "DATE_PICKER_BUTTON"
		static let webviewButton = "WEBVIEW_BUTTON"
		static let imageButton = "IMAGE_BUTTON"
	}
}
