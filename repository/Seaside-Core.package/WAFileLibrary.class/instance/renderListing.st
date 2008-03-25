rendering
renderListing
	| title |
	title := 'Index of ', self name.
	^WARenderCanvas builder
		rootBlock: [ :html | html title: title ];
		renderResponse: [ :html |
			html heading level: 1; with: title.
			html table: [
				html tableRow: [
					html tableHeading: 'Name'.
					html tableHeading: 'Description' ].
				self fileSelectors do: [ :each |
					html tableRow: [
						html tableData: [
							html anchor
								url: (self urlOf: each);
								with: (self asFilename: each) ].
						html tableData: (self mimetypeForFile: (self asFilename: each)) ] ] ] ]