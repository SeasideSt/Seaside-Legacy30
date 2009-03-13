rendering
renderTableOn: canvas
	self renderInline: [:html | 
				html table: [html tableRow: [ html tableData with: 'data' ] ] ] 
		key: #table
		on: canvas