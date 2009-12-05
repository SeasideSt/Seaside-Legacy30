rendering
renderSeastarOn: html
	html paragraph id: 'seastar'; with: [
		html image
			altText: 'Seaside';
			url: (JQAllTestsLibrary urlOf: #seastarPng) ]