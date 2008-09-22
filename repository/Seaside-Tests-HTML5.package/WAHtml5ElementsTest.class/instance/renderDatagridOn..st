rendering
renderDatagridOn: html
	html heading level2; with: '<datagrid>'.

	html datagrid: [
		html table: [
			html tableRow: [
				html tableData: 'Jones'.
				html tableData: 'Allison'.
				html tableData: 'A-'.
				html tableData: 'B+'.
				html tableData: 'A' ].
			html tableRow: [
				html tableData: 'Smith'.
				html tableData: 'Johnny'.
				html tableData: 'A'.
				html tableData: 'C+'.
				html tableData: 'A' ].
			html tableRow: [
				html tableData: 'Willis'.
				html tableData: 'Sydney'.
				html tableData: 'C-'.
				html tableData: 'D'.
				html tableData: 'F' ].
			html tableRow: [
				html tableData: 'Wilson'.
				html tableData: 'Frank'.
				html tableData: 'B-'.
				html tableData: 'B+'.
				html tableData: 'A' ]  ] ]