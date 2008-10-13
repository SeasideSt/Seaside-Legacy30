rendering
renderContentOn: html
	html paragraph
		script: (html updater
			interval: 1 second;
			on: #renderTimeOn: of: self);
		with: [ self renderTimeOn: html ]