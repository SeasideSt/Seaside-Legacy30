rendering
renderContentOn: html
| currentList |
	html div class: 'groupContent';
		with: [
			html heading level2; with: 'Configure attribute: ', attribute key.
			html break.
			html form: [
				self renderActionsOn: html.
				html paragraph .
				html table: [
					html tableRow: [
						html tableData: [
							html label: 'Available'.
							html break.
							html multiSelect 
								list: self fullList;
								selected: selections;
								size: 30;
								callback: [:v | self selections: v] ].
						html tableData: [ self renderMoveActionsOn: html ].
						html tableData
							verticalAlign: 'top';
							with: [
								html label: 'Current'.
								html break.
								currentList := self currentList.
								currentList isEmpty
									ifTrue: [html text: '(empty)']
									ifFalse: [
								html multiSelect
									list: currentList;
									disabled: self isWriteable not;
									selected: selectionsCurrent;
									labels: [:each | each value seasideString, ' [' ,each key seasideString , ']'];
									size: 30;
									callback: [:v | self selectionsCurrent: v] ] ] ] ].
			
			html submitButton
				callback: [ self answer];
				with: 'OK'] ]