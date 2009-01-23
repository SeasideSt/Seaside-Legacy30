testing
testWalkbackClass
	| walkbackClass |
	walkbackClass := WAPlatform current walkbackClass.
	self assert: (walkbackClass isKindOf: Class)