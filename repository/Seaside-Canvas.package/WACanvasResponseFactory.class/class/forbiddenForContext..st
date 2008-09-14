as yet unclassified
forbiddenForContext: aRequestContext
	| response content |
	response := WAResponse new.
	response forbidden.
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root | root title: 'Forbidden' ];
		render: [ :html |
			html heading level1; with: [
				html text: 'Error: you are forbidden to access "'.
				html text: aRequestContext request url.
				html text: '"' ] ].
	response nextPutAll: content.
	^ response