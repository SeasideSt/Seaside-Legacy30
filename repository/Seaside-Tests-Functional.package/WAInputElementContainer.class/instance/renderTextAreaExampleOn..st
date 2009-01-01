rendering-elements
renderTextAreaExampleOn: html
	self
		renderLabel: 'Text Area (Example)'
		input: [
			html textArea
				columns: 17;
				rows: 3;
				value: textAreaExample;
				exampleText: self exampleText;
				callback: [ :value | textAreaExample := value ] ]
		output: textAreaExample printString
		on: html