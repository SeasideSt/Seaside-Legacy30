attributes
attributes
	^ OrderedCollection new
		add: ((WANumberAttribute key: #sessionExpirySeconds)
			comment: 'The numer of seconds after which inactive sessions are expired.';
			default: 600;
			yourself);
		add: ((WAListAttribute key: #sessionClass)
			comment: 'Sessions in this application will be instances of this class.';
			options: [self sessionClasses];
			default: WASession;
			yourself);
		add: ((WAListAttribute key: #mainClass)
			options: [self mainClasses];
			yourself);
		add: ((WAListAttribute key: #errorHandler)
			options: [self errorHandlerClasses];
			default: WASimpleErrorHandler;
			yourself);
		add: ((WAListAttribute key: #redirectHandler)
			options: [self redirectHandlerClasses];
			default: WARedirectHandler;
			yourself);
		add: ((WAListAttribute key: #renderContinuationClass)
			options: [self renderContinuationClasses];
			default: WARenderContinuation; 
			yourself);
		add: ((WAListAttribute key: #redirectContinuationClass)
			options: [self redirectContinuationClasses];
			default: WARenderContinuation;
			yourself);
		add: ((WABooleanAttribute key: #useSessionCookie)
			comment: 'Whether the session identifier should be stored in a cookie instead of the URL. Will fall back to URL if the client does not support cookies.';
			default: false;
			yourself);
		add: ((WACollectionAttribute key: #libraries)
			options: [self libraryClasses];
			default: (Array with: WAStandardFiles);
			yourself);
		add: ((WACollectionAttribute key: #decorationClasses)
			options: [self allDecorationClasses];
			default: #();
			yourself);
		yourself