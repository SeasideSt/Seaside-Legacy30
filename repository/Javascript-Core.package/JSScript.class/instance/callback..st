convenience
callback: aBlock
	self goto: (canvas context actionUrl
		withParameter: (canvas callbacks store: (WAActionCallback on: aBlock)))