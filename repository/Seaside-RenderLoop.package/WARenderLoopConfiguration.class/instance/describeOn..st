description
describeOn: config
	(config list: #rootClass)
		comment: 'The root component of this seaside application.';
		options: [self rootClasses].
	(config collection: #rootDecorationClasses)
		comment: 'The decoration clases that should wrap the root component.';
		options: [self rootDecorationClasses].
	config
		at: #mainClass put: WARenderLoopMain