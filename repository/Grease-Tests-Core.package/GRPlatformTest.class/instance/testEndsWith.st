tests
testEndsWith
	self assert: ('aaabbbcc' endsWith: 'cc').
	self deny: ('aaabbbcc' endsWith: 'd')