rendering
renderPackagesOn: html
	html table: [
		html tableHead: [
			html tableRow: [
				html tableHeading: 'Package'.
				html tableHeading: 'Version' ] ].
		self sortedWorkingCopies do: [ :category |
			html tableRow: [
				html tableHeading: category key.
				html tableHeading ].
			category value do: [ :each |
				html tableRow: [
					html tableData: each packageName.
					html tableData: (each ancestry ancestorString copyAfterLast: $-) ] ] ] ]