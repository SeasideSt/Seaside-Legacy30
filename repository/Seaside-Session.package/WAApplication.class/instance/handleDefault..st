handling
handleDefault: aRequestContext
	self handle: aRequestContext registering: self sessionClass new
		