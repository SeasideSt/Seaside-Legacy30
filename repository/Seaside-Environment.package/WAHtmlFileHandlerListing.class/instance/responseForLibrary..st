responding
responseForLibrary: aLibrary
	| title |
	title := 'Index of ', aLibrary name.
	^ WARenderCanvas builder
		rootBlock: [ :html | html title: title ];
		renderResponse: [ :html |
			html heading level: 1; with: title.
			html table: [
				html tableRow: [
					html tableHeading: 'Name'.
					html tableHeading: 'Size'.
					html tableHeading: 'Description' ].
				aLibrary fileSelectors do: [ :each |
					html tableRow: [
						html tableData: [
							html anchor
								url: (aLibrary urlOf: each);
								with: (aLibrary asFilename: each) ].
						html tableData: (aLibrary perform: each) size.
						html tableData: (aLibrary mimetypeForFile: (aLibrary asFilename: each)) ] ] ] ]