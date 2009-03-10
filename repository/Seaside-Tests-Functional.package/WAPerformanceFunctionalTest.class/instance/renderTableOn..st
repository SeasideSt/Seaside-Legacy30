rendering
renderTableOn: canvas
	self renderDurationFor: [:html :idx | 
				html table: [html tableRow: [ html tableData with: idx ] ] ] 
		title: 'Table Test'
		on: canvas