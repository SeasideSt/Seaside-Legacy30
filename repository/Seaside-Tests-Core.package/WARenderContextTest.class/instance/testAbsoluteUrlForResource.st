testing
testAbsoluteUrlForResource
	| context |
	context := WARenderContext new.
	context resourceUrl: (WAUrl absolute: 'http://seaside.st/foo').
	self assert: (context absoluteUrlForResource: nil) isNil.
	self assert: ((context absoluteUrlForResource: 'bar') isKindOf: WAUrl).
	self assert: (context absoluteUrlForResource: 'bar') seasideString = 'http://seaside.st/foo/bar'.
	self assert: ((context absoluteUrlForResource: '/bar') isKindOf: WAUrl).
	self assert: (context absoluteUrlForResource: '/bar') seasideString = 'http://seaside.st/foo/bar'.
	self assert: ((context absoluteUrlForResource: '') isKindOf: WAUrl).
	self assert: (context absoluteUrlForResource: '') seasideString = 'http://seaside.st/foo'.
	self assert: ((context absoluteUrlForResource: 'http://localhost/foo') isKindOf: WAUrl).
	self assert: (context absoluteUrlForResource: 'http://localhost/foo') seasideString = 'http://localhost/foo'.