private
applicationExceptionHandlingDefaults
	^ WASharedConfiguration named: 'Application Exception Handling Defaults' ifNew: [ :config |
		config
			addParent: WAExceptionFilterConfiguration instance;
			at: #exceptionHandler put: WAHtmlErrorHandler ]