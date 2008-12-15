utilities
assertIllegal: aString
	self should: [ self parse: aString ] raise: JSJsonSyntaxError