rendering
renderContentOn: html
	html table: [ 
		self iconClasses do: [ :each |
			html tableRow: [
				html tableData: each.
				html tableData: [
					html span
						class: 'ui-icon';
						class: each ] ] ] ]