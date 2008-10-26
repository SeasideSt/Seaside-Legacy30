rendering
renderContentOn: html
	html image
		width: size x; height: size y;
		url: (JQUiAllTestsLibrary urlOf: #image1Jpg);
		script: (html jQuery new resizable
			onStop: (html jQuery ajax
				triggerResizableSize: [ :value | size := value ]))