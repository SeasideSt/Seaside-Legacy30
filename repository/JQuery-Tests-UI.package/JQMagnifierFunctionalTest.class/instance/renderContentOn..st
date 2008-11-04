rendering
renderContentOn: html
	html div
		script: (html jQuery new magnifier);
		with: [
			5 timesRepeat: [
				html image
					altText: 'Seaside';
					url: (JQUiAllTestsLibrary urlOf: #seastarPng) ] ]