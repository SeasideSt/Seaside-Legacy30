rendering
renderContentOn: html
	html anchor
		url: (html actionUrl
			withParameter: 'terminate');
		with: self label