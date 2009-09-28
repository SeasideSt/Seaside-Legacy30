rendering
renderRow: anEntryPoint named: aString on: html
	html tableRow: [
		html tableData: [ self renderRowExpand: anEntryPoint on: html ].
		html tableData: [ self renderRowName: anEntryPoint named: aString on: html ].
		html tableData: [ self renderRowDescription: anEntryPoint named: aString on: html ] ]