callbacks
callback: aBlock
	self attributes at: 'value' put: (self storeCallback: (WAValueCallback on: aBlock))