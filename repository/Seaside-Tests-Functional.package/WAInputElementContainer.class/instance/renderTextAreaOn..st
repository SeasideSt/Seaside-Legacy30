rendering-elements
renderTextAreaOn: html
	self
		renderLabel: 'Text Area'
		input: [
			html textArea
				columns: 17;
				rows: 3;
				value: textArea;
				callback: [ :value | textArea := value ] ]
		output: textArea printString
		on: html