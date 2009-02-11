rendering
renderContentOn: html
	| theId divId theId2 | 
	component := nil.
	timeComponent := nil.
	theId := html nextId.
	divId := html nextId.
	theId2 := html nextId.
	html div id: divId.
	html form: [
		html table: [
				html tableRow: [
					html tableData
						with: [html textInput id: theId].
					html tableData: [
						html button value: 'Set date';
							onClick: (html scriptaculous evaluator
								callback: [:v | self setupDatePickerOn: theId div: divId origin: v] value: (html scriptaculous element id: theId; cumulativeOffset);
								callback: [:script | self openDatePickerOn: script];
											return: false) ] ].
				html tableRow: [
					html tableData
						with: [html textInput id: theId2].
					html tableData: [
						html button value: 'Set date & time';
							onClick: (html scriptaculous evaluator
								callback: [:v | self setupDateTimePickerOn: theId2 div: divId origin: v] value: (html scriptaculous element id: theId2; cumulativeOffset);
								callback: [:script | self openDateTimePickerOn: script];
											return: false) ] ] ] ].
