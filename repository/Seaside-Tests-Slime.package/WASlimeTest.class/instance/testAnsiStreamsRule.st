testing-transform
testAnsiStreamsRule
	self 
		run: WAAnsiStreamsRule new
		changes: #( 
			'writeStream ^ WriteStream on: '''''
			'writeCr | stream | stream := WriteStream on: ''''. stream nextPut: Character cr. stream nextPut: Character cr'
			'writeLf | stream | stream := WriteStream on: ''''. stream nextPut: Character lf. stream nextPut: Character lf')