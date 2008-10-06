rendering
renderDateSelectorsOn: html 
	html heading
		level3;
		with: 'Dates'.
	html form: [
		html table: [
			html tableRow: [
				html
					tableData: 'From';
					tableData: beginDate ].
			html tableRow: [
				html
					tableData: 'To';
					tableData: endDate ] ].
		html div: [
			html submitButton
				callback: [ self inform: (endDate date - beginDate date) days seasideString, ' day(s)' ];
				text: 'Compute duration' ] ]