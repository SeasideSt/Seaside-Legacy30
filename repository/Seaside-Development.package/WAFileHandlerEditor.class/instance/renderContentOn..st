rendering
renderContentOn: html
	super renderContentOn: html.
	html paragraph: [
		html anchor
			callback: [ self show: self handler configuration configurationComponent ];
			with: 'edit file handler configuration' ].
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