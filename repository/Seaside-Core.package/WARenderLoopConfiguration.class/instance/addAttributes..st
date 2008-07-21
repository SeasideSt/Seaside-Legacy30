attributes
addAttributes: attributes
	(attributes string: #mimeType)
		comment: 'the Internet media type of HTML documents reported to the browser';
		default: WAResponse defaultValueForMimeType.
	(attributes string: #charSet)
		comment: 'The character set reported to the browser. You may additionally need to configure your server that this is also the character set used by your server.';
		default: WAResponse defaultValueForCharSet.
	(attributes list: #rootComponent)
		comment: 'The root component of this seaside application.';
		options: [self rootComponents].
	(attributes string: #resourceBaseUrl)
		group: #server;
		comment: 'Sets the base URL for URLS generated with #resourceUrl:'.