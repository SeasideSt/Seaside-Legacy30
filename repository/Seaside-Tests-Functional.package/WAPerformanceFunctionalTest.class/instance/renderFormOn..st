rendering
renderFormOn: canvas
	self renderDurationFor: [:html :idx | 
			html form: [
				html button value: 'OK'.
				html fileUpload.
				html select list: #('a' 'b'); labels: [:v | v asString].
				html radioButton.
				html textInput size: 20; value: ''.
				html textArea
						rows: 3;
						columns: 17;
						value: ''.
				html checkbox value: true.
				html passwordInput value: 'pw' ]  ] 
		key: #form
		on: canvas