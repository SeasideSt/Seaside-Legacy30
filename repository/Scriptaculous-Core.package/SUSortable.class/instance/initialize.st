initialization
initialize
	super initialize.
	self format: (JSStream on: '/^([0-9]+)$/')