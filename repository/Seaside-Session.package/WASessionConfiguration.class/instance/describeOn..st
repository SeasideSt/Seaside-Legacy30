description
describeOn: config
	(config list: #errorHandler)
		options: [self errorHandlerClasses];
		default: WAErrorHandler.
	(config list: #mainClass)
		options: [self mainClasses].
	(config number: #sessionContinuationCacheSize)
		comment: 'The number of continuations to keep cached for each session. Once a continuation has expired, users of the application will be unable to click links, submit forms, or trigger actions on that page.';
		default: 20.
	(config number: #sessionExpirySeconds)
		comment: 'The number of seconds after which inactive sessions are expired.';
		default: 600.
	(config boolean: #useSessionCookie)
		comment: 'Whether the session identifier should be stored in a cookie instead of the URL. Will fall back to URL if the client does not support cookies.';
		default: false.
	(config boolean: #sessionAllowTermination)
		comment: 'Whether sessions allows a special HTTP request to terminate the process currently running in the session. This is used during development and should be disabled for deployment.';
		default: false.