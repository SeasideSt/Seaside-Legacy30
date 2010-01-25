testing-transform
testAnsiStreamsRule
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile: 'writeStream ^ '''' writeStream' in: class.
	self compile: 'writeCr | stream | stream := WriteStream on: ''''. stream cr. stream nextPut: Character cr' in: class.
	self compile: 'writeLf | stream | stream := WriteStream on: ''''. stream lf. stream nextPut: Character lf' in: class.
	self 
		runTransformation: WAAnsiStreamsRule
		changes: #( 
			'writeStream ^ WriteStream on: '''''
			'writeCr | stream | stream := WriteStream on: ''''. stream nextPut: Character cr. stream nextPut: Character cr'
			'writeLf | stream | stream := WriteStream on: ''''. stream nextPut: Character lf. stream nextPut: Character lf')