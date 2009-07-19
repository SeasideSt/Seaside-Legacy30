accessing-dynamic
entryPoint
	"Answer the closest subclass of WAEntryPoint in the handler stack"

	^ handlers 
		detect: [ :each | each isEntryPoint ]
		ifNone: [ nil ]