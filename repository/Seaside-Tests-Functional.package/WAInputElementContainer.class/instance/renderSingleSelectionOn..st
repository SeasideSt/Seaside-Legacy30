rendering-elements
renderSingleSelectionOn: html
	self
		renderLabel: 'Single Selection'
		input: [
			html select
				list: self elements;
				selected: singleSelection;
				callback: [ :value | singleSelection := value ] ]
		output: singleSelection printString
		on: html