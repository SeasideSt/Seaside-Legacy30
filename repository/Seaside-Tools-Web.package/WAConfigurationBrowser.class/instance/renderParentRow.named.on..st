rendering-rows
renderParentRow: aHandler named: aString on: html
	html tableRow: [
		html tableData.
		html tableData: [
			html anchor
				title: 'Open parent handler';
				callback: [ self expand: aHandler parent; configure: aHandler ];
				with: [ html code: aString ] ].
		html tableData.
		html tableData ]