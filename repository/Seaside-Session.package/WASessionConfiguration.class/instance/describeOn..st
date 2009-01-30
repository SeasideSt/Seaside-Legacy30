description
describeOn: config
	(config list: #exceptionHandler)
		beAdvanced;
		options: [ self exceptionHandlerClasses ];
		default: WAErrorHandler.
	(config list: #mainClass)
		beAdvanced;
		options: [ self mainClasses ].
	(config boolean: #sessionAllowTermination)
		comment: 'Whether sessions allows a special HTTP request to terminate the process currently running in the session. This is used during development and should be disabled for deployment.';
		default: false