rendering
renderContentOn: html
	self renderExampleOn: html.
	html div
		class: 'buttons';
		with: [ self renderCloseOn: html ]
		

