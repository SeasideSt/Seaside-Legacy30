rendering
renderValuesOn: html
	self sortedWorkingCopies do: [ :category |
		html tableRow: [
			html tableHeading: category key.
			html tableHeading ].
		category value do: [ :each |
			html tableRow: [
				html tableData: each packageName.
				html tableData: (each ancestry ancestorString copyAfterLast: $-) ] ] ]