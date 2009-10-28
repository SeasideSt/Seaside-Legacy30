rendering
renderContentOn: html
	html image
		altText: 'Seaside';
		width: size x; height: size y;
		url: (JQUiAllTestsLibrary urlOf: #seastarPng);
		script: (html jQuery new resizable
			onStop: (html jQuery ajax
				callbackResizable: [ :event | size := event at: #size ]))