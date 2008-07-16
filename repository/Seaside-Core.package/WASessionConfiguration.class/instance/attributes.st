attributes
attributes
	^ OrderedCollection new
		add: (WANumberAttribute
			key: #sessionExpirySeconds
			comment: 'The numer of seconds after which inactive sessions are expired.');
		add: ((WAListAttribute
			key: #sessionClass
			comment: 'Sessions in this application will be instances of this class.')
			options: self sessionClasses;
			yourself);
		add: ((WAListAttribute key: #mainClass)
			options: self mainClasses;
			yourself);
		add: ((WAListAttribute key: #errorHandler)
			options: self errorHandlerClasses;
			yourself);
		add: ((WAListAttribute key: #redirectHandler)
			options: self redirectHandlerClasses;
			yourself);
		add: ((WAListAttribute key: #renderContinuationClass)
			options: self renderContinuationClasses;
			yourself);
		add: ((WAListAttribute key: #redirectContinuationClass)
			options: self redirectContinuationClasses;
			yourself);
		add: (WABooleanAttribute
			key: #useSessionCookie
			comment: 'Whether the session identifier should be stored in a cookie instead of the URL. Will fall back to URL if the client does not support cookies.');
		add: ((WACollectionAttribute key: #libraries)
			options: self libraryClasses;
			yourself);
		add: ((WACollectionAttribute key: #decorationClasses)
			options: self allDecorationClasses;
			yourself);
		yourself