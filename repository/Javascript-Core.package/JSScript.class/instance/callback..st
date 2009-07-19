convenience
callback: aBlock
	self goto: (self renderContext actionUrl
		withParameter: (self renderContext callbacks store: (WAActionCallback on: aBlock)))