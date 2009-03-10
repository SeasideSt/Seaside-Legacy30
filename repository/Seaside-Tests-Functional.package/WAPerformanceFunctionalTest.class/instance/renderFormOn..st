rendering
renderFormOn: canvas
	self renderDurationFor: [:html :idx | 
			html form: [
				html button value: 'OK'.
				html submitButton value: 'Submit'.
				html cancelButton value: 'Cancel'.
				html fileUpload.
				html imageButton.
				html select list: #('a' 'b').
				html radioButton.
				html textInput size: 20; value: ''.
				html textArea
						rows: 3;
						columns: 17;
						value: ''.
				html checkbox value: true.
				html passwordInput value: 'pw' ]  ] 
		title: 'Form test'
		on: canvas