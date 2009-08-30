*comet-pharo-core
forkCometProcessDo: aBlock
	^ aBlock forkAt: 20 named: 'ping'