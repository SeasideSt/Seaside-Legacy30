public
register: aRequestHandler
	^ self cache store: (aRequestHandler setParent: self)