rendering
renderContentOn: html
	html textInput
		value: name;
		callback: [ :value | name := value ];
		onChange: (html jQuery ajax serializeThis);
		script: (html jQuery new autocomplete
			callback: [ :value | self itemsFor: value ])