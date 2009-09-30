streaming
nextPut: aCharacter
	binary
		ifTrue: [ stream nextPut: aCharacter asCharacter ]
		ifFalse: [ converter nextPut: aCharacter asCharacter toStream: stream ]