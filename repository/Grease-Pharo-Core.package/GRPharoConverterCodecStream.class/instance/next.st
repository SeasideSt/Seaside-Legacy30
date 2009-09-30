streaming
next
	| character |
	character := binary
		ifTrue: [ stream next ]
		ifFalse: [ converter nextFromStream: stream ].
	^ character isNil
		ifFalse: [ character asCharacter ]