public
expiredKeyHandler
	^ self expiredKeyHandlerClass new
		setParent: self;
		yourself