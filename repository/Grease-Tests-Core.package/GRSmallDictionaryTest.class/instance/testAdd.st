testing-accessing
testAdd
	| association |
	association := dictionary add: '1' -> 'foo'.
	self assert: (dictionary at: '1') = 'foo'.
	self assert: association key = '1'.
	self assert: association value = 'foo'.
	
	association := dictionary add: '1' -> 'bar'.
	self assert: (dictionary at: '1') = 'bar'.
	self assert: association key = '1'.
	self assert: association value = 'bar'.