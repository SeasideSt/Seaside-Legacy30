private
renderListing
	| title |
	title := 'Index of ', self basePath.
	^WARenderCanvas builder
		rootBlock: [ :html | html title: title ];
		renderResponse: [ :html |
			html heading: title.
			html unorderedList: [
				self libraries do: [ :each |
					html listItem: [
						html anchor
							url: (each urlOf: '');
							with: each name ] ] ] ]