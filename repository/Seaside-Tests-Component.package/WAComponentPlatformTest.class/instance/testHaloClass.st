testing
testHaloClass
	| class |
	class := SeasidePlatformSupport haloClass.
	
	self assert: (class isNil or: [ class new isKindOf: WAComponent ]).