rendering
renderContentOn: html
	html anchor
		class: self cssClass;
		url: (html actionUrl
			withParameter: 'terminate');
		with: self label