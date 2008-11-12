private
applicationDefaults
	| config |
	config := WASharedConfiguration named: 'Application Defaults'.
	config parents isEmpty ifFalse: [ ^ config ].
	config
		addParent: WAApplicationConfiguration instance;
		addParent: WARenderLoopConfiguration instance;
		at: #exceptionHandler put: WAHtmlErrorHandler;
		at: #libraries addAll: (Array with: WAStandardFiles);
		at: #responseFactory put: WAHtmlResponseFactory.
	^ config