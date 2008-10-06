rendering
renderNilOn: html
	html heading: 'Nil response'.
	html paragraph: 'The link should return an internal server error. A nil response might get passed to the server adapter if some strange things happen in the error handling, possibly including debuggers.'.
	html anchor
		callback: [ self answerNil ];
		with: 'answer nil'