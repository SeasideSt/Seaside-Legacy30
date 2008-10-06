rendering-elements
renderNestedSelectionOn: html
	self
		renderLabel: 'Nested Selection'
		input: [
			html select: [
				self nestedElements do: [ :list |
					html optionGroup label: list first; with: [
						list second do: [ :each |
							html option
								selected: nestedSelection = each;
								callback: [ nestedSelection := each ];
								with: each ] ] ] ] ]
		output: nestedSelection printString
		on: html