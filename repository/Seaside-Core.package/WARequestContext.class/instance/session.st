accessing-dynamic
session
	"Answer the current session or nil."

	^ handlers 
		detect: [ :each | each isSession ]
		ifNone: [ nil ]