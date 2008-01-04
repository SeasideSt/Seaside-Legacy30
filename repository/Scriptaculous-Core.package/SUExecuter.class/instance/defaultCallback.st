private
defaultCallback
	| stream |
	stream := SUStream new.
	self owner printContentOn: stream.
	^ stream asFunction