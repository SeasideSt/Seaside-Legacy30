convenience
callback: aBlock
	self goto: (canvas actionUrl
		withParameter: (canvas callbacks store: (WAActionCallback on: aBlock)))