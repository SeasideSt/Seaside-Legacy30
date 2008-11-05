rendering
renderCheckboxesOn: html
	html text: booleanList.
	html paragraph.
	html form: [
		booleanList do: [:association |
			html text: association key; space.
			html checkbox
				addShortcut: 'Ctrl-' , association key asUppercase;
				on: #value of: association.
			html span
				class: 'indented'; class: 'hint';
				with: 'Shortcuts: ', 'Ctrl-', association key asUppercase.
			html break].
		html submitButton]