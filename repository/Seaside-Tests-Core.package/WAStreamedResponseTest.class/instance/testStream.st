testing
testStream
	
	" while setting the headers we do not write "
	self assert: self stream position = 0.
	self response forbidden; headerAt: 'foo' put: 'bar'.
	self assert: self stream position = 0.
	self deny: self response isCommitted.
	self 
		shouldnt: [ self response committedCheck ]
		raise: WAIllegalStateException.
	
	" this flushes the headers "
	self response nextPutAll: 'hello'.
	self assert: self response isCommitted.
	self 
		should: [ self response committedCheck ]
		raise: WAIllegalStateException