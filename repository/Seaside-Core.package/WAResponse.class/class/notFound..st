instance creation
notFound: locationString
	| response content |
	response := self new notFound.
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root |
			root title: 'Not Found' ];
		render: [ :html |
			html heading level1; with: [
				html render: 'Error: "'.
				html render: locationString.
				html render: '" not found' ] ].
	response nextPutAll: content.
	^ response