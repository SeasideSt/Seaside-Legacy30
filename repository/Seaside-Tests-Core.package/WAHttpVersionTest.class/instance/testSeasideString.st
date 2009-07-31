tests
testSeasideString
	| version |
	version := WAHttpVersion major: 1 minor: 0.
	
	self assert: version seasideString = 'HTTP/1.0'