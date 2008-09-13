public
notFoundHandler
	^ self notFoundHandlerClass new
		setParent: self;
		yourself