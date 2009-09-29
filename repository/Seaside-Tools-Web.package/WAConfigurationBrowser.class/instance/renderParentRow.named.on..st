rendering-rows
renderParentRow: anEntryPoint named: aString on: html
	html tableRow: [
		html tableData.
		html tableData: [html anchor
								title: 'Open parent handler';
								callback: [ self expand: anEntryPoint ];
								with: [ html code: aString ] ].
		html tableData.
		html tableData]