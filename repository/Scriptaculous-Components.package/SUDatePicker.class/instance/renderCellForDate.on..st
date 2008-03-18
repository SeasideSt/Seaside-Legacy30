rendering
renderCellForDate: aDate on: html
	html tableData class: 'day'; class: 'daySelected' if: self date = aDate;
		with: [aDate monthIndex = self monthIndex ifTrue: [
					(self canSelect: aDate)
						ifTrue: [
							html anchor class: 'today' if: aDate = Date today;
								callback: [ self select: aDate ];
								onClick: ((html evaluator)
									callback: [:script | self scriptSelect: aDate on: script];
									return: false);
								with: aDate dayOfMonth ]
						ifFalse: [ html text: aDate dayOfMonth ] ] ]