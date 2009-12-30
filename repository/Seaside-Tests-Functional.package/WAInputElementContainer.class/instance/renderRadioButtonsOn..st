rendering-elements
renderRadioButtonsOn: html
	| radioGroup |
	self
		renderLabel: 'Radiogroup'
		input: [
			html radioGroup
				callback: [:value | radio := value];
				with: [ :group |
					self elements do: [ :each |
						html label: [ 
							group radioButton
								selected: radio = each;
								value: (group valueFor: each).
							html text: each ].
						html break ] ] ]
		output: radio printString
		on: html