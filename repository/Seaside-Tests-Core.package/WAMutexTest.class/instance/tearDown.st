running
tearDown
	super tearDown.
	process isNil ifFalse: [ WAPlatform current terminateProcess: process ].
	process2 isNil ifFalse: [ WAPlatform current terminateProcess: process2 ]