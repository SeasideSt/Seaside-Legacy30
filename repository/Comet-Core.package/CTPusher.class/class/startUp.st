initialization
startUp
	self shutDown.
	delay := Delay forSeconds: 15.
	process := WAPlatform current
		forkCometProcessDo: [ [ self pingProcess ] repeat ]