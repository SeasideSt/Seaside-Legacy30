tests-accessing
testEquals
	| other |
	collection add: '1' -> 'foo'.
	collection add: '2' -> 'bar'.
	
	other := self newCollection.
	other add: '2' -> 'bar'.
	other add: '1' -> 'foo'.
	
	self assert: collection = other.
	self assert: collection hash = other hash.