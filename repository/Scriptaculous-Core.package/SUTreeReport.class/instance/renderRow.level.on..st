rendering
renderRow: anObject level: anInteger on: html
	"Render a specific row anObject at level anInteger."
	
	html tableRow id: (self uid: anObject on: html); with: [
		columns withIndexDo: [ :each :index |
			html tableData: [
				index = 1 
					ifTrue: [ self renderRowIndent: anObject level: anInteger on: html ].
				html render: (each value value: anObject) ] ] ]