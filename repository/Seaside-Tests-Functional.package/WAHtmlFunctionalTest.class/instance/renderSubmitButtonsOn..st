rendering
renderSubmitButtonsOn: html 
	html text: number.
	html paragraph.
	html form: [
		1 to: 10 do: [ :index | 
			html submitButton
				addShortcut: 'F', index seasideString;
				callback: [ number := index ];
				text: index.
			html space ] ].
	html span
		class: 'hint';
		with: 'Above, you may be able to use F1 .. F10 as shortcuts, if the browser allows you.'