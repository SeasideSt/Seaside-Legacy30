rendering
renderSelectsOn: html
	html text: number.
	html paragraph.
	html form: [
		html select
			list: (1 to: 10);
			on: #number of: self.
		html submitButton]