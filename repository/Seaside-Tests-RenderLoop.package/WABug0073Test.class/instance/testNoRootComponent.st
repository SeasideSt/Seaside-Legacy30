testing
testNoRootComponent
	| application |
	application := WAApplication new.
	self assert: '' = application description