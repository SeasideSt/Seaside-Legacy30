rendering
renderButtonsOn: html
	html paragraph: [
		html break.
		html submitButton on: #save of: self.
		html submitButton on: #close of: self ]