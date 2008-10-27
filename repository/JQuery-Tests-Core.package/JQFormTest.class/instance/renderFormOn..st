rendering
renderFormOn: html
	html form
		onChange: (html jQuery ajax
			serialize: html jQuery this;
			script: [ :script |
				script << (script jQuery: #form)
					html: [ :r | self renderFormOn: r ] ]);
		with: [
			self renderTextInputOn: html.
			self renderTextAreaOn: html.
			self renderCheckBoxOn: html.
			self renderRadioButtonOn: html.
			self renderSelectListOn: html.
			self renderMultiSelectListOn: html ]