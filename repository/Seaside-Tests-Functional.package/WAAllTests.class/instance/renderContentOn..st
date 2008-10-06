rendering
renderContentOn: html
	html heading: 'Functional Seaside Test Suite'.
	html form: [
		html paragraph: [
			html anchor
				callback: [ self previous ];
				with: [ html html: '&larr;' ].
			html select
				list: classes;
				beSubmitOnChange;
				labels: [ :value | value name ];
				selected: self selected;
				callback: [ :value | self activate: value ].
			html anchor
				callback: [ self next ];
				with: [ html html: '&rarr;' ].
			html text: ' '; submitButton: 'Restart' ] ].
	html horizontalRule.
	html render: current contents