accessing-dynamic
entryPoint
	"Answer the closest EntryPoint or nil."

	^ handlers 
		detect: [ :each | each isEntryPoint ]
		ifNone: [ nil ]