converting
valueForField: anObject
	| stream x y |
	stream := (super valueForField: anObject)
		readStream.
	(stream atEnd not and: [ stream next = $? ])
		ifFalse: [ ^ nil ].
	x := Integer readFrom: stream.
	(stream atEnd not and: [ stream next = $, ])
		ifFalse: [ ^ nil ].
	stream atEnd ifTrue: [  ^nil ].
	y := Integer readFrom: stream.
	^ x @ y