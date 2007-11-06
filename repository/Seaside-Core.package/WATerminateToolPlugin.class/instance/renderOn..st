rendering
renderOn: html
	html anchor
		url: (html context actionUrl
			withParameter: 'terminate');
		with: self label