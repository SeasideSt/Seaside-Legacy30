testing
testLangugeOnly
	| locale |
	locale := WALocale fromString: 'de'.
	self assert: locale language = 'de'.
	self assert: locale country isNil.
	self assert: locale seasideString = 'de'