rendering-elements
renderRadioButtonsOn: html
	self
		renderLabel: 'Radiogroup'
		input: [
			html radioGroup: [ :group |
				self elements do: [ :each |
					html label: [ 
						group radioButton
							selected: radio = each;
							callback: [ radio := each ].
						html text: each ].
					html break ] ] ]
		output: radio printString
		on: html