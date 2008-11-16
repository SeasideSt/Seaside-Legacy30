rendering-elements
renderTextInputOn: html
	self
		renderLabel: 'Text-Input'
		control: [ :id :script |
			html textInput
				id: id;
				value: textInput;
				callback: [ :value | textInput := value ];
				onChange: (script html: [ :h | h render: textInput ]) ]
		model: textInput
		on: html