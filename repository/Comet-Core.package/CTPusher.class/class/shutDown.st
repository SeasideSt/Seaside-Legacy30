initialization
shutDown
	process ifNil: [ ^ self ].
	WAPlatform current terminateProcess: process.
	process := nil