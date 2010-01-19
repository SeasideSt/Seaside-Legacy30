rendering-elements
renderSingleSelectionCustomOn: html 
	self 
		renderLabel: 'Single Selection (Custom)'
		input: 
			[html select
				with:
					[self elements
						do: [:opt |
							html option
								label: 'Short: ', (opt copyFrom: 1 to: 3);
								callback: [singleSelectionCustom := opt];
								selected: (singleSelectionCustom = opt);
								with: 'Custom:', opt greaseString  ] ] ]
		output: singleSelectionCustom printString
		on: html