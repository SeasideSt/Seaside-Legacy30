rendering
renderEditAreaOn: html
	html textArea
		value: input;
		callback: [ :value | input := value ].
	html break.
	html submitButton
		callback: [ self doIt ];
		text: 'do it'.
	html submitButton
		callback: [ self inspectIt ];
		text: 'inspect it'