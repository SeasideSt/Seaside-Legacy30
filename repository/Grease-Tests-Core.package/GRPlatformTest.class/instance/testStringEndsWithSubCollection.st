tests
testStringEndsWithSubCollection
	self assert: ('aaabbbcc' endsWithSubCollection: 'cc').
	self deny: ('aaabbbcc' endsWithSubCollection: 'd')