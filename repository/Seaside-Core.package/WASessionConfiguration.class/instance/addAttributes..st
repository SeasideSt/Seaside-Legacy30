attributes
addAttributes: attributes
	(attributes list: #errorHandler)
		options: [self errorHandlerClasses];
		default: WASimpleErrorHandler.
	(attributes list: #mainClass)
		options: [self mainClasses].
	(attributes list: #redirectHandler)
		options: [self redirectHandlerClasses];
		default: WARedirectHandler.
	(attributes number: #sessionExpirySeconds)
		comment: 'The numer of seconds after which inactive sessions are expired.';
		default: 600.
	(attributes boolean: #useSessionCookie)
		comment: 'Whether the session identifier should be stored in a cookie instead of the URL. Will fall back to URL if the client does not support cookies.';
		default: false.