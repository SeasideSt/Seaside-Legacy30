converting
valueForField: anObject
	| stream x y |
	stream := (super valueForField: anObject)
		readStream.
	(stream atEnd not and: [ stream next = $? ])
		ifFalse: [ ^ nil ].
	x := (stream upTo: $,) seasideInteger.
	(x isNil or: [ stream atEnd ]) ifTrue: [ ^ nil ].
	y := stream upToEnd seasideInteger.
	y isNil ifTrue: [ ^ nil ].
	^ x @ y