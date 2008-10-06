rendering
renderContentOn: html
	html form
		multipart;
		with: [
			html table: inputElements.
			html div: [
				"div for validation"
				html submitButton ] ]