rendering-elements
renderRadioButtonOn: html
	self
		renderLabel: 'Radio-Button'
		control: [ :id :script |
			html radioGroup
				callback: [:value | radioButton := value ];
				with: [ :group |
				1 to: 3 do: [ :each |
					html label: [
						html radioButton
							group: group;
							selected: radioButton = each;
							value: each;
							onChange: (script html: [ :h | h render: radioButton ]).
						html text: each ].
					html break ] ] ]
		model: radioButton
		on: html