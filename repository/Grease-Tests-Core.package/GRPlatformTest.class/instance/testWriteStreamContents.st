tests-streams
testWriteStreamContents
	"ANSI 5.9.3.1"
	
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: 'abc'.
	self assert: stream contents = 'abc'.
	stream nextPutAll: 'def'.
	self assert: stream contents = 'abcdef'