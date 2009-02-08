convenience
callback: aBlock
	self goto: (canvas context actionUrl
		withParameter: (canvas callbacks
			registerActionCallback: aBlock))