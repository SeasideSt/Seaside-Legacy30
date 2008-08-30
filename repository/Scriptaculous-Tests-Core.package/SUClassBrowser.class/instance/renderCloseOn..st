rendering
renderCloseOn: html
	html form: [
		html submitButton
			callback: [ self answer ];
			text: 'close' ]