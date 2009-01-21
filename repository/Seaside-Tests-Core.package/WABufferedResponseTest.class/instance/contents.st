accessing
contents
	| stream |
	stream := String new writeStream.
	self response writeOn: stream.
	^ stream contents