testing-adding
testAddParameterValue
	url 
		addParameter: 'x'
		value: 1.
	self assert: url greaseString = '/?x=1'.
	url 
		addParameter: 'y'
		value: 2.
	self assert: url greaseString = '/?x=1&y=2'.
	url 
		addParameter: 'x'
		value: 3.
	self assert: url greaseString = '/?x=1&y=2&x=3'