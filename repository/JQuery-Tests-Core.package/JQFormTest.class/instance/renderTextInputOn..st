rendering-elements
renderTextInputOn: html
	self
		renderLabel: 'Text-Input'
		control: [ :id |
			html textInput
				id: id;
				value: textInput;
				callback: [ :value | textInput := value ] ]
		model: textInput
		on: html