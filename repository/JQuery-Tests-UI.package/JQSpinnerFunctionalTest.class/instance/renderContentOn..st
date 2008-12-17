rendering
renderContentOn: html
	html textInput
		value: count;
		callback: [ :value | count := value ];
		script: (html jQuery new spinner
			onChange: (html jQuery ajax
				serializeThis))