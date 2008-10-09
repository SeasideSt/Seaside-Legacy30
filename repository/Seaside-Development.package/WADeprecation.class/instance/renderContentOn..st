rendering
renderContentOn: html 

	html div class: self class name;
		with: [
			html strong: 'Reset deprecated warnings?'.
			html render: self table]
	