rendering
renderContentOn: html
	html form
		get;
		with: [
			html table: inputElements.
			html div: [
				"div for validation"
				html submitButton ] ]