generation
forbidden
	self response
		forbidden;
		contentType: WAMimeType textHtml;
		nextPutAll: (WARenderCanvas builder
			fullDocument: true;
			rootBlock: [ :root | root title: 'Forbidden' ];
			render: [ :html |
				html heading: [
					html text: 'Error: you are forbidden to access "'.
					html text: self request url.
					html text: '"' ] ])