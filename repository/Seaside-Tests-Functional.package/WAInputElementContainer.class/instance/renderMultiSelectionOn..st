rendering-elements
renderMultiSelectionOn: html
	self
		renderLabel: 'Multi Selection'
		input: [
			html multiSelect
				list: self elements;
				titles: [ :each | 'Title: ', each asString ];
				selected: multiSelection;
				callback: [ :value | multiSelection := value ] ]
		output: [
			multiSelection isEmptyOrNil ifFalse: [
				"empty lists are invalid HTML"
				html unorderedList list: multiSelection ] ]
		on: html