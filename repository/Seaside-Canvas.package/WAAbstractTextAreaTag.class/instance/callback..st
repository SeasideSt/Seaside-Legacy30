callbacks
callback: aBlock
	self name: (canvas callbacks registerCallback: aBlock).
	self value: self value