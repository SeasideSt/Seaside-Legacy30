rendering
renderSubItemsOn: html
	super renderSubItemsOn: html.
	html heading level: 1; with: 'Libraries'.
	html table: [
		self libraries do: [ :each |
			html tableRow: [
				html tableData: each name.
				html tableData: [
					html anchor
						callback: [ self configureLibrary: each default ];
						with: 'configure' ] ] ] ].