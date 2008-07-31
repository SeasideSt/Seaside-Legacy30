attributes
addAttributes: attributes
	(attributes list: #errorHandler)
		options: [self errorHandlerClasses];
		default: WASimpleErrorHandler.
	(attributes list: #mainClass)
		options: [self mainClasses].
	(attributes number: #sessionContinuationCacheSize)
		comment: 'The number of continuations to keep cached for each session. Once a continuation has expired, users of the application will be unable to click links, submit forms, or trigger actions on that page.';
		default: 20.
	(attributes number: #sessionExpirySeconds)
		comment: 'The number of seconds after which inactive sessions are expired.';
		default: 600.
	(attributes boolean: #useSessionCookie)
		comment: 'Whether the session identifier should be stored in a cookie instead of the URL. Will fall back to URL if the client does not support cookies.';
		default: false.