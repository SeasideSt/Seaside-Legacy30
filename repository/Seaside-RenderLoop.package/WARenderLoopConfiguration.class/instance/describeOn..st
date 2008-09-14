description
describeOn: config
	(config list: #redirectContinuationClass)
		options: [self redirectContinuationClasses];
		default: WARedirectContinuation.
	(config list: #renderContinuationClass)
		options: [self renderContinuationClasses];
		default: WARenderContinuation.
	(config list: #rootClass)
		comment: 'The root component of this seaside application.';
		options: [self rootClasses].
	(config collection: #rootDecorationClasses)
		comment: 'The decoration clases that should wrap the root component.';
		options: [self rootDecorationClasses].
	config
		at: #mainClass put: WARenderLoopMain;
		at: #errorHandler put: WASimpleErrorHandler