instance creation
forbidden: locationString
	| response content |
	response := self new forbidden.
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root |
			root title: 'Forbidden' ];
		render: [ :html |
			html heading level1; with: [
				html render: 'Error: you are forbidden to access "'.
				html render: locationString.
				html render: '"' ] ].
	response nextPutAll: content.
	^ response