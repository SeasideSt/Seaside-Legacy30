rendering-elements
renderRadioButtonOn: html
	self
		renderLabel: 'Radio-Button'
		control: [ :fid :mid |
			html radioGroup
				callback: [:value | radioButton := value ];
				with: [ :group |
					1 to: 3 do: [ :each |
						html label: [
							html radioButton
								group: group;
								selected: radioButton = each;
								callbackValue: each;
								onChange: (html scriptaculous updater
									id: mid;
									triggerForm: fid;
									callback: [ :r | r render: radioButton ]).
						 		html text: each ].
						html break ] ] ]
		model: radioButton
		on: html