attributes
addAttributes: attributes
	(attributes collection: #decorationClasses)
		options: [self allDecorationClasses];
		default: #().
	(attributes list: #redirectContinuationClass)
		options: [self redirectContinuationClasses];
		default: WARedirectContinuation.
	(attributes list: #renderContinuationClass)
		options: [self renderContinuationClasses];
		default: WARenderContinuation.
	(attributes list: #rootClass)
		comment: 'The root component of this seaside application.';
		options: [self rootClasses].
