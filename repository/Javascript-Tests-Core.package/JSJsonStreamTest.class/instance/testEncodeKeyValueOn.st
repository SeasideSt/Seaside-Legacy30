testing
testEncodeKeyValueOn
	| actual |
	actual := String streamContents: [ :stream |
		JSJsonStream encodeKey: 'key' value: 'value' on: stream ].
	self assert: actual = '"key":"value"'