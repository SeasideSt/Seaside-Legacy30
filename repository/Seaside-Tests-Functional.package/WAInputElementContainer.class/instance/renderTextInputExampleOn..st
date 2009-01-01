rendering-elements
renderTextInputExampleOn: html
	self
		renderLabel: 'Text Input (Example)'
		input: [
			html textInput
				value: textInputExample;
				exampleText: self exampleText;
				callback: [ :value | textInputExample := value ] ]
		output: textInputExample printString
		on: html