rendering
renderContentOn: html
	html div 
		id: #form;
		with: [ self renderFormOn: html ].
	html script: ((html jQuery: #form)
		onChange: ((html jQuery ajax
			serialize: (html jQuery: 'form');
			script: [ :s | 
				(s jQuery: #form) 
					html: [ :r | self renderFormOn: r ] ])))