testing
testWithRootComponent
	| application |
	application := WAApplication new.
	application configuration addParent: WARenderLoopConfiguration instance.
	application preferenceAt: #rootClass put: WAAllTests.
	self assert: WAAllTests description = application description