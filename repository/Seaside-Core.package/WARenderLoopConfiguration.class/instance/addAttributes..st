attributes
addAttributes: attributes
	(attributes collection: #decorationClasses)
		options: [self allDecorationClasses];
		default: #().
	(attributes list: #redirectContinuationClass)
		options: [self redirectContinuationClasses];
		default: WARenderContinuation.
	(attributes list: #renderContinuationClass)
		options: [self renderContinuationClasses];
		default: WARenderContinuation.
	(attributes list: #rootComponent)
		comment: 'The root component of this seaside application.';
		options: [self rootComponents].
