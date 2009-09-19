rendering
renderContentOn: html 
	html heading: class fullName.
	html div
		id: 'protocols';
		with: [ self renderProtocolsOn: html ].
	html div
		id: 'selectors';
		with: [ self renderSelectorsOn: html ].
	html div class: 'clear'.
	html div
		id: 'source';
		with: [ self renderSourceOn: html ].
	html div class: 'clear'.
	html div
		id: 'close';
		with: [ self renderCloseOn: html ]