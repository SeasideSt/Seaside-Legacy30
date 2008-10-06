rendering
renderContentOn: html
	html form: [
		html table: inputElements.
		html div: [
			"div for validation"
			html submitButton ] ]