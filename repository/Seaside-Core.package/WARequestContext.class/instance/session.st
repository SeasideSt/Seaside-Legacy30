accessing-dynamic
session
	"Answer the current session or nil."

	^ handlers 
		detect: [ :each | each isKindOf: WASession ]
		ifNone: [ nil ]