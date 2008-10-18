testing
testParameters
	url parameters 
		at: '1'
		put: nil.
	self assert: url seasideString = '/?1'.
	url parameters 
		at: '2'
		put: 'foo'.
	self assert: url seasideString = '/?1&2=foo'.
	url parameters 
		at: '3'
		put: 123.
	self assert: url seasideString = '/?1&2=foo&3=123'.
	url parameters 
		at: '4'
		put: 'foo bar&zork'.
	self assert: url seasideString = '/?1&2=foo&3=123&4=foo%20bar%26zork'