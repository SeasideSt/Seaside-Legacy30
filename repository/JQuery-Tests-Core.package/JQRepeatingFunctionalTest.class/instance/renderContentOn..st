rendering
renderContentOn: html
	html paragraph
		script: (html jQuery this load
			html: [ :r | self renderTimeOn: r ];
			interval: 1 second);	
		with: [ self renderTimeOn: html ]