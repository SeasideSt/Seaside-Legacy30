accessing
generator

	Generator ifNil: [
		Generator := SeasidePlatformSupport randomClass new.
		"Generator instance should be refreshed at vm startup - platform responsibility"
		self registerForStartup].
	^Generator