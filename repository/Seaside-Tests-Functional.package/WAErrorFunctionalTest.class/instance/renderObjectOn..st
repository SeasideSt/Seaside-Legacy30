rendering
renderObjectOn: html
	html heading: 'Inappropriate response'.
	html paragraph: 'This link triggers returning an inappropriate object as a response. It should, however, be handled relatively gracefully by the server adaptor.'.
	html anchor
		callback: [ self answerObject ];
		with: 'answer inappropriate object'