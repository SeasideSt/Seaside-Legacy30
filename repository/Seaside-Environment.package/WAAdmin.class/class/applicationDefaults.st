private
applicationDefaults
	^ WASharedConfiguration named: 'Application Defaults' ifNew: [ :config |
		config
			addParent: WAApplicationConfiguration instance;
			addParent: WARenderLoopConfiguration instance;
			at: #exceptionHandler put: WAHtmlErrorHandler;
			at: #responseFactory put: WAHtmlResponseFactory ]