rendering
renderContentOn: html
	html table
		class: 'DateTable';
		border: 1;
		with: [
			html tableRow: [ self renderMonthHeadingsOn: html ].
			html tableRow: [ self renderDayHeadingsOn: html ].
			rows withIndexDo: [ :each :index |
				html tableRow: [self renderRow: each index: index on: html ] ] ]