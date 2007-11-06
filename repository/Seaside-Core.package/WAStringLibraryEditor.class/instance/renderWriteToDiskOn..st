rendering
renderWriteToDiskOn: html
	html form: [
		html submitButton
			callback: [ self library deployFiles ];
			title: 'write all the files to disk';
			text: 'write to disk' ]