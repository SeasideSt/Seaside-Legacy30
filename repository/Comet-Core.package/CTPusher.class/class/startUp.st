initialization
startUp
	self shutDown.
	delay := Delay forSeconds: 15.
	process := SeasidePlatformSupport
		withName: 'ping' withPriority: 20
		fork: [ [ self pingProcess ] repeat ]