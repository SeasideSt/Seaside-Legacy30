public
notFoundHandler
	^ (self configuration valueAt: #notFoundHandlerClass) new