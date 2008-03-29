accessing
session
	^requestHandlers
		detect: [ :each | each isKindOf: WASession ]
		ifNone: [ nil ]