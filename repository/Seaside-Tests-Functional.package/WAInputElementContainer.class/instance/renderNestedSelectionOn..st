rendering-elements
renderNestedSelectionOn: html
	| selectTag |
	self
		renderLabel: 'Nested Selection'
		input: [
			selectTag := html select.
			selectTag
				callback: [:value | nestedSelection := value ];
				with: [
					self nestedElements do: [ :list |
						html optionGroup
							label: list first;
							with: [
								list second do: [ :each |
									html option
										selected: nestedSelection = each;
										value: (selectTag valueFor: each);
										with: each ] ] ] ] ]
		output: nestedSelection printString
		on: html