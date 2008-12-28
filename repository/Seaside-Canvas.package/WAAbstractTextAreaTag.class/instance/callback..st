callbacks
callback: aBlock
	self name: (canvas callbacks registerValueCallback: aBlock).
	self value: self value