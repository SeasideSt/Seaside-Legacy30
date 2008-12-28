converting
valueForField: anObject
	| stream x y |
	stream := (super valueForField: anObject)
		readStream.
	stream next = $? ifFalse: [ ^ nil ].
	x := Integer readFrom: stream.
	stream next = $, ifFalse: [ ^ nil ].
	y := Integer readFrom: stream.
	^ x @ y