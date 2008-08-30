rendering
renderContentOn: html
	html paragraph
		script: (html updater
			every: 1 second;
			on: #renderTimeOn: of: self);
		with: [ self renderTimeOn: html ]