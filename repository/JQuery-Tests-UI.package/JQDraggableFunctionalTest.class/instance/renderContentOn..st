rendering
renderContentOn: html
	html image
		altText: 'Seaside';
		url: (JQUiAllTestsLibrary urlOf: #seastarPng);
		script: (html jQuery new draggable opacity: 0.75)