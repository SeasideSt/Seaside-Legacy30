initialization
startUp
	self shutDown.
	process := WAPlatform current
		forkCometProcessDo: [ [ self pingProcess ] repeat ]