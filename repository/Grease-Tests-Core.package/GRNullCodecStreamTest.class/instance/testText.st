tests-protocol
testText
	| stream |
	stream := GRNullCodec new 
		encoderFor: (WriteStream on: String new).
	self shouldnt: [ stream text ] raise: Error