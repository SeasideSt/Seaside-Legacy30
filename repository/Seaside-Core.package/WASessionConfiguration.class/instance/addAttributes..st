attributes
addAttributes: attributes
	(attributes number: #sessionExpirySeconds)
		comment: 'The numer of seconds after which inactive sessions are expired.';
		default: 600.
	(attributes list: #sessionClass)
		comment: 'Sessions in this application will be instances of this class.';
		options: [self sessionClasses];
		default: WASession.
	(attributes list: #mainClass)
		options: [self mainClasses].
	(attributes list: #errorHandler)
		options: [self errorHandlerClasses];
		default: WASimpleErrorHandler.
	(attributes list: #redirectHandler)
		options: [self redirectHandlerClasses];
		default: WARedirectHandler.
	(attributes list: #renderContinuationClass)
		options: [self renderContinuationClasses];
		default: WARenderContinuation.
	(attributes list: #redirectContinuationClass)
		options: [self redirectContinuationClasses];
		default: WARenderContinuation.
	(attributes boolean: #useSessionCookie)
		comment: 'Whether the session identifier should be stored in a cookie instead of the URL. Will fall back to URL if the client does not support cookies.';
		default: false.
	(attributes collection: #libraries)
		options: [self libraryClasses];
		default: (Array with: WAStandardFiles).
	(attributes collection: #decorationClasses)
		options: [self allDecorationClasses];
		default: #().