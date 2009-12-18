tests
testConvertToSmalltalkNewlines
	| expected euro |
	expected := 'selector' , String cr , '"comment"'.
	self assert: expected = (GRPlatform current convertToSmalltalkNewlines: expected).
	self assert: expected = (GRPlatform current convertToSmalltalkNewlines: 'selector' , String lf , '"comment"').
	self assert: expected = (GRPlatform current convertToSmalltalkNewlines: 'selector' , String crlf , '"comment"').
	euro := String with: (Character codePoint: 8364).
	self assert: (expected , euro) = (GRPlatform current convertToSmalltalkNewlines: expected , euro).
	self assert: (GRPlatform current convertToSmalltalkNewlines: nil) isNil