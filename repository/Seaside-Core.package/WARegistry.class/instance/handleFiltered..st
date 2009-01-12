processing
handleFiltered: aRequestContext
	| key |
	key := self
		keyFromContext: aRequestContext
		ifAbsent: [ self handleDefaultRequest: aRequestContext ].
	self handleFiltered: aRequestContext key: key