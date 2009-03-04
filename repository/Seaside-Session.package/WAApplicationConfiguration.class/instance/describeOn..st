description
describeOn: config
	(config string: #charSet)
		beAdvanced;
		label: 'Charater Set';
		comment: 'The character set reported to the browser. You may additionally need to configure your server that this is also the character set used by your server.';
		default: 'utf-8'.
	(config collection: #libraries)
		options: [ self libraryClasses ].
	(config list: #mainClass)
		beAdvanced;
		options: [ self mainClasses ].
	(config string: #mimeType)
		beAdvanced;
		label: 'MIME Type';
		comment: 'The media type of HTML documents reported to the browser.';
		default: 'text/html'.
	(config string: #resourceBaseUrl)
		group: #server;
		comment: 'Sets the base URL for URLS generated with #resourceUrl:'.
	(config boolean: #sessionAllowTermination)
		comment: 'Whether sessions allows a special HTTP request to terminate the process currently running in the session. This is used during development and should be disabled for deployment.';
		default: false.
	(config list: #sessionClass)
		comment: 'Sessions in this application will be instances of this class.';
		options: [ self sessionClasses ];
		default: WASession
