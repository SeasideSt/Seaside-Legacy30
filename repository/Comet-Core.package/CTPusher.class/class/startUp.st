initialization
startUp
	self shutDown.
	delay := Delay forSeconds: 15.
	process := WAPlatform current
		withName: 'ping' withPriority: 20
		fork: [ [ self pingProcess ] repeat ]