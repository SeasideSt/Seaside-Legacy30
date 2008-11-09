responding
responseForLibraries
	| title |
	title := 'Index of ', handler basePath.
	^ WARenderCanvas builder
		rootBlock: [ :html | html title: title ];
		renderResponse: [ :html |
			html heading: title.
			html unorderedList: [
				handler libraries do: [ :each |
					html listItem: [
						html anchor
							url: (each urlOf: '');
							with: each name ] ] ] ]