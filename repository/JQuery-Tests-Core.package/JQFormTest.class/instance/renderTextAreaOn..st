rendering-elements
renderTextAreaOn: html
	self
		renderLabel: 'Text-Area'
		control: [ :id |
			html textArea
				id: id;
				columns: 20;
				value: textArea;
				callback: [ :value | textArea := value ] ]
		model: textArea
		on: html