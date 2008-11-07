description
describeOn: config
	(config list: #rootComponentClass)
		label: 'Root Component';
		options: [ self rootComponents ].
	(config list: #exceptionHandler)
		options: [ self exceptionHandlerClasses ];
		default: WASimpleErrorHandler.