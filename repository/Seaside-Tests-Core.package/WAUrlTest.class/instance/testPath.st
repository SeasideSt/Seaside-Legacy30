testing
testPath
	self assert: url seasideString = '/'.
	url path add: 'aa'.
	self assert: url seasideString = '/aa'.
	url path add: 'bb'.
	self assert: url seasideString = '/aa/bb'.
	self assert: url path asArray = #('aa' 'bb' )