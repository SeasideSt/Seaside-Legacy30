rendering-elements
renderRadioButtonOn: html
	self
		renderLabel: 'Radio-Button'
		control: [ :id :script |
			html radioGroup: [ :group |
				1 to: 3 do: [ :each |
					html label: [
						html radioButton
							group: group;
							selected: radioButton = each;
							callback: [ radioButton := each ];
							onChange: (script html: [ :h | h render: radioButton ]).
						html text: each ].
					html break ] ] ]
		model: radioButton
		on: html