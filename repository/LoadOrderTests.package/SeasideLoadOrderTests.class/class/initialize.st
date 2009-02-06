initialization
initialize

	(UIManager default confirm: 'Load Seaside 2.9?') ifTrue: [
		self new doLoad.
	].
