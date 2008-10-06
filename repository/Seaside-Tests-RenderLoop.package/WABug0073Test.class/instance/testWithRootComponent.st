testing
testWithRootComponent
	| application |
	application := WAApplication new.
	application configuration addParent: WARenderLoopConfiguration instance.
	application preferenceAt: #rootClass put: WAComponent.
	self assert: WAComponent description = application description