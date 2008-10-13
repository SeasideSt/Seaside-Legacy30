testing-objects
testSmallObject
	| result |
	result := self parse: '{a:1}'.
	self assert: (result isKindOf: Dictionary).
	self assert: (result at: 'a') = 1.
	self assert: (result size) = 1