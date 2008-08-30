rendering
renderContentOn: html
	| theId buttonId | 
	component := nil.
	theId := html nextId.
	buttonId := html nextId.
	html form: [html table: [
				html tableRow: [
					html tableData verticalAlign: 'top'; with: [html textInput id: theId].
					html tableData: [html button id: buttonId; value: 'Set date';
								onClick: (html evaluator callback: [:script | self setupDatePickerOn: theId button: buttonId script: script];
												return: false)].
					 ] ] ].
