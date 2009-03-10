rendering
renderTableOn: canvas
	self renderDurationFor: [:html | 
		html heading: 'Table Test'.
		html unorderedList: [
			1 to: 500 do: [:each | 
				html table: [html tableRow: [ html tableData with: each ]] ] ] ] on: canvas