accessing-dynamic
application
	"Answer the current application or nil."

	^ handlers 
		detect: [ :each | each isKindOf: WAApplication ]
		ifNone: [ nil ]