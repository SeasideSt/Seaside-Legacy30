rendering
renderContentOn: html
	html div
		id: 'form';
		onChange: (JSLogger new log: (html jQuery this get)) , (html jQuery ajax
			serializeForm;
			script: [ :script |
				script << (script jQuery: #form)
					html: [ :r | self renderFormOn: r ] ]);
		with: [ self renderFormOn: html ]