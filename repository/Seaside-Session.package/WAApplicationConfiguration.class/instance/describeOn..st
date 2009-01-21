description
describeOn: config
	(config string: #charSet)
		beAdvanced;
		label: 'Charater Set';
		comment: 'The character set reported to the browser. You may additionally need to configure your server that this is also the character set used by your server.';
		default: 'utf-8'.
	(config collection: #libraries)
		options: [ self libraryClasses ].
	(config string: #mimeType)
		beAdvanced;
		label: 'MIME Type';
		comment: 'The media type of HTML documents reported to the browser.';
		default: 'text/html'.
	(config string: #resourceBaseUrl)
		group: #server;
		comment: 'Sets the base URL for URLS generated with #resourceUrl:'.
	(config list: #sessionClass)
		comment: 'Sessions in this application will be instances of this class.';
		options: [ self sessionClasses ];
		default: WASession.
