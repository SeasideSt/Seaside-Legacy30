description
describeOn: config
	(config list: #rootComponentClass)
		label: 'Root Component';
		options: [ self rootComponents ].
	(config list: #errorHandler)
		options: [ self errorHandlerClasses ];
		default: WASimpleErrorHandler.