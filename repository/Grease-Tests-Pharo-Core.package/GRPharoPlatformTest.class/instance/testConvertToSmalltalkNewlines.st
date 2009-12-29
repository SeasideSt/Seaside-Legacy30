tests
testConvertToSmalltalkNewlines
	| expected euro |
	expected := 'selector' , (String with: Character cr) , '"comment"'.
	self assert: expected = (GRPlatform current convertToSmalltalkNewlines: expected).
	self
		assert:
			expected = (GRPlatform current convertToSmalltalkNewlines: 'selector' , (String with: Character lf) , '"comment"').
	self
		assert:
			expected
				=
					(GRPlatform current
						convertToSmalltalkNewlines: 'selector' , (String with: Character cr with: Character lf) , '"comment"').
	euro := String with: (Character codePoint: 8364).
	self assert: (expected , euro) = (GRPlatform current convertToSmalltalkNewlines: expected , euro).
	self assert: (GRPlatform current convertToSmalltalkNewlines: nil) isNil