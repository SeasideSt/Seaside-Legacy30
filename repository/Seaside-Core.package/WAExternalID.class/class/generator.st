accessing
generator

	Generator ifNil: [
		Generator := self randomClass new.
		"Generator instance should be refreshed at vm startup - platform responsibility"
		self registerForStartup].
	^Generator