private
parseImageMap: aString
	| stream x y |
	('?*,*' match: aString) ifFalse: [ ^ nil ].
	stream := aString readStream.
	stream upTo: $?.
	x := stream upTo: $,.
	y := stream upToEnd.
	^ x asInteger @ y asInteger