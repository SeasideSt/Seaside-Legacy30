rendering
renderCellForDate: aDate on: html
	html tableData class: 'day'; class: 'daySelected' if: self date = aDate;
		with: [aDate month = self month ifTrue: [
					(self canSelect: aDate)
						ifTrue: [
							html anchor class: 'today' if: aDate = Date today;
								callback: [ self select: aDate ];
								with: aDate dayOfMonth ]
						ifFalse: [ html text: aDate dayOfMonth ] ] ]