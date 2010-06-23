rendering
renderContentOn: html
	html heading level1 with: 'Example: ', self title.
	html anchor
		class: 'goback';
		callback: [ self answer ];
		with: '[ go back ]'.
	self renderExampleOn: html.
		
	html form
		class: 'back-form';
		with: [
			html submitButton
				callback: [ self answer ];
				with: 'Back' ]