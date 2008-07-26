attributes
addAttributes: attributes
	(attributes string: #charSet)
		comment: 'The character set reported to the browser. You may additionally need to configure your server that this is also the character set used by your server.';
		default: WAResponse defaultValueForCharSet.
	(attributes collection: #libraries)
		options: [self libraryClasses];
		default: (Array with: WAStandardFiles).
	(attributes string: #mimeType)
		comment: 'the Internet media type of HTML documents reported to the browser';
		default: WAResponse defaultValueForMimeType.
	(attributes string: #resourceBaseUrl)
		group: #server;
		comment: 'Sets the base URL for URLS generated with #resourceUrl:'.
	(attributes list: #sessionClass)
		comment: 'Sessions in this application will be instances of this class.';
		options: [self sessionClasses];
		default: WASession.
