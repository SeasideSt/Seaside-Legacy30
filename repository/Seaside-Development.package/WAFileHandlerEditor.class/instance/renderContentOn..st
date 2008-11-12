rendering
renderContentOn: html
	super renderContentOn: html.
	html table: [
		self libraries do: [ :each |
			html tableRow: [
				html tableData: each name.
				html tableData: [
					html anchor
						callback: [ self configureLibrary: each default ];
						with: 'configure' ] ] ] ].
	html form: [
		html submitButton
			callback: [ self answer ];
			text: 'close' ]