rendering
renderContentOn: html
	html table: [
		self renderTableHeaderOn: html.
		self renderRowsOn: html.
		self renderTableFooterOn: html ]