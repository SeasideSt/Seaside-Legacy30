as yet unclassified
renderContentOn: html
	| url |
	self renderInstructionsOn: html.
	
	html form: [
		html div: [
			self renderNumberListOn: html.
			self renderLetterListOn: html.
			html submitButton ] ].

	html paragraph: 'This should always be a NUMBER: ', number seasideString.
	html paragraph: 'This should always be a LETTER: ', letter seasideString.
	
	url := html context actionUrl seasideString.
	html anchor
		onClick: 'swapCallbacks("',url,'","letter-list", "number-list")';
		with: 'Try to break it'