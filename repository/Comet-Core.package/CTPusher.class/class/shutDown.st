initialization
shutDown
	process ifNil: [ ^ self ].
	SeasidePlatformSupport terminateProcess: process.
	process := nil