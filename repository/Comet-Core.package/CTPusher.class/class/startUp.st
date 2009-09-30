initialization
startUp
	self shutDown.
	process := GRPlatform current forkCometProcessDo: [ [ self pingProcess ] repeat ]