description
describeOn: config
	(config list: #rootComponentClass)
		label: 'Root Component';
		options: [ self rootComponents ].
	(config string: #charSet)
		label: 'Charater Set';
		comment: 'The character set reported to the browser. You may additionally need to configure your server that this is also the character set used by your server.';
		default: 'utf-8'.
	config at: #documentClass put: WAXmlDocument