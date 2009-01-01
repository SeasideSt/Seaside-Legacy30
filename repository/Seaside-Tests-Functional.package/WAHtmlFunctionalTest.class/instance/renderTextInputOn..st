rendering
renderTextInputOn: html
	html form: [
		html text: message.
		html paragraph.
		html textInput
			on: #message of: self.
		html submitButton]