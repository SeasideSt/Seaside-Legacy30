testing
testFragment
	url fragment: 'id'.
	self assert: url fragment = 'id'.
	self assert: url seasideString = '/#id'