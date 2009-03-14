rendering
renderSectionTitle: aString on: html
	html tableHead: [
		html tableRow: [
			html tableData
				colSpan: 2;
				with: aString ] ]