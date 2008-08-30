testing-stream
testStreamNextPutAll
	| stream |
	stream := self stream nextPutAll: 'foo'.
	self assert: stream contents = 'foo'