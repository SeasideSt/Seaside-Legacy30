testing
testHaloClass
	| class |
	class := WAPlatform current haloClass.
	
	self assert: (class isNil or: [ class new isKindOf: WAComponent ]).