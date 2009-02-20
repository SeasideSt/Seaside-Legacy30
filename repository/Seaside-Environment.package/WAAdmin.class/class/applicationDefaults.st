private
applicationDefaults
	^ WASharedConfiguration named: 'Application Defaults' ifNew: [ :config |
		config
			addParent: WARenderLoopConfiguration instance;
			at: #exceptionHandler put: WAHtmlErrorHandler;
			at: #responseGenerator put: WAHtmlResponseGenerator ]