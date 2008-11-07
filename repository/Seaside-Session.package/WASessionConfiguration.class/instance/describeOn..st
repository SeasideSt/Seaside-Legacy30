description
describeOn: config
	(config list: #exceptionHandler)
		options: [self exceptionHandlerClasses];
		default: WASimpleErrorHandler.
	(config list: #mainClass)
		options: [self mainClasses].
	(config boolean: #useSessionCookie)
		comment: 'Whether the session identifier should be stored in a cookie instead of the URL. Will fall back to URL if the client does not support cookies.';
		default: false.
	(config boolean: #sessionAllowTermination)
		comment: 'Whether sessions allows a special HTTP request to terminate the process currently running in the session. This is used during development and should be disabled for deployment.';
		default: false.