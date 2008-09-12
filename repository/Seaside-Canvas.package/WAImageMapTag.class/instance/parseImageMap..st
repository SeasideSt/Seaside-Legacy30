private
parseImageMap: aString
	| stream x y |
	stream := aString readStream.
	stream next = $? ifFalse: [ ^ nil ].
	x := Integer readFrom: stream.
	stream next = $, ifFalse: [ ^ nil ].
	y := Integer readFrom: stream.
	^ x @ y