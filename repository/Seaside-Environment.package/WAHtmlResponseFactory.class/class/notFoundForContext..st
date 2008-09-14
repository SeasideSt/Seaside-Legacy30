as yet unclassified
notFoundForContext: aRequestContext 
	| response content |
	response := WAResponse new.
	response notFound.
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root | root title: 'Not Found' ];
		render: [ :html |
			html heading level1; with: [
				html text: 'Error: "'.
				html text: aRequestContext request url.
				html text: '" not found' ] ].
	response nextPutAll: content.
	^ response