rendering
renderRow: anObject level: anInteger on: html
	"Render a specific row anObject at level anInteger."
	
	html tableRow id: (self uid: anObject on: html); with: [
		columns withIndexDo: [ :each :index |
			html tableData: [
				html table cellspacing: 0; cellpadding:0; with: [
					html tableRow: [
						index = 1 
							ifTrue: [self renderRowIndent: anObject level: anInteger on: html ].
							html tableData class: 'pr'; with: [html render: (each value value: anObject) ] ] ] ] ] ]