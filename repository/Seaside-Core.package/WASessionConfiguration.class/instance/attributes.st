attributes
attributes
	^ OrderedCollection new
		add: (WANumberAttribute key: #sessionExpirySeconds);
		add: ((WAListAttribute key: #sessionClass)
			options: self sessionClasses);
		add: ((WAListAttribute key: #mainClass)
			options: self mainClasses);
		add: ((WAListAttribute key: #errorHandler)
			options: self errorHandlerClasses);
		add: ((WAListAttribute key: #redirectHandler)
			options: self redirectHandlerClasses);
		add: ((WAListAttribute key: #renderContinuationClass)
			options: self renderContinuationClasses);
		add: ((WAListAttribute key: #redirectContinuationClass)
			options: self redirectContinuationClasses);
		add: (WABooleanAttribute key: #useSessionCookie);
		add: ((WACollectionAttribute key: #libraries)
			options: self libraryClasses);
		yourself