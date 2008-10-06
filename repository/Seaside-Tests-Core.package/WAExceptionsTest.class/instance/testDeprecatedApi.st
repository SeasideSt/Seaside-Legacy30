testing
testDeprecatedApi
	| expected actual |
	expected := 'message in a bottle'.
	actual := [ self seasideDeprecatedApi: expected ]
		on: WADeprecatedApi
		do: [ :notification | notification messageText ].
		
	self assert: actual = expected