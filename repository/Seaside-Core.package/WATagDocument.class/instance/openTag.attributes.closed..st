writing-xhtml
openTag: aString attributes: anAttributes closed: aBoolean
	stream nextPut: $<.
	stream nextPutAll: aString.
	anAttributes encodeOn: self.
	aBoolean ifTrue: [ stream nextPut: $/ ].
	stream nextPut: $>