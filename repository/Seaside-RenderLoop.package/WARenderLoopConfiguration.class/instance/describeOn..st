description
describeOn: config
	(config collection: #decorationClasses)
		options: [self allDecorationClasses].
	(config list: #redirectContinuationClass)
		options: [self redirectContinuationClasses];
		default: WARedirectContinuation.
	(config list: #renderContinuationClass)
		options: [self renderContinuationClasses];
		default: WARenderContinuation.
	(config list: #rootClass)
		comment: 'The root component of this seaside application.';
		options: [self rootClasses].
		
	config
		at: #mainClass put: WARenderLoopMain;
		at: #errorHandler put: WASimpleErrorHandler.
