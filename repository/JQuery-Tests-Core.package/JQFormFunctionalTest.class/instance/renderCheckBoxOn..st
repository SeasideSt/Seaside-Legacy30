rendering-elements
renderCheckBoxOn: html
	self
		renderLabel: 'Check-Box'
		control: [ :id |
			html checkbox
				id: id;
				value: checkBox;
				callback: [ :value | checkBox := value ] ]
		model: checkBox
		on: html