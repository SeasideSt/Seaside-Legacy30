rendering
renderRadioButtonsOn: html
	html text: booleanList.
	html paragraph.
	html form: [
		booleanList do: [ :association |
			| group |
			group := html radioGroup.
			html text: association key; space.
			group radioButton
				addShortcut: 'Ctrl-' , association key;
				selected: association value;
				callback: [ association value: true ].
			group radioButton
				addShortcut: 'Alt-' , association key;
				selected: association value not;
				callback: [ association value: false ].
			html span
				class: 'indented'; class: 'hint';
				with: 'Shortcuts: Ctrl-' , association key, ' Alt-', association key.
			html break ].
		html submitButton ]