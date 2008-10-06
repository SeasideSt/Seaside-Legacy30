rendering-elements
renderSingleSelectionWithoutCallbackOn: html
	self
		renderLabel: 'Single Selection (Without Callback)'
		input: [ html select list: self elements ]
		output: nil
		on: html