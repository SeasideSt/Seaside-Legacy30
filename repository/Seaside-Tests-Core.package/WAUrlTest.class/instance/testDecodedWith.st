testing-encoding
testDecodedWith
	| pathArray expectedPathArray |
	"http://ùser:paß@localhost:8080/foo/äbc/dêf?õ=stîgetc&ô#tårget"
	url := (WAUrl absolute: 'http://%c3%b9ser:pa%c3%9f@localhost:8080/foo/%C3%A4bc/d%c3%aaf?%c3%b5=st%c3%aegetc&%c3%b4#t%c3%a5rget')
		decodedWith: (WACodec forEncoding: 'utf-8').
	
	self assert: url scheme = 'http'.
	self assert: url username = (self asString: #(249 115 101 114)).
	self assert: url password = (self asString: #(112 97 223)).
	self assert: url hostname = 'localhost'.
	self assert: url port = 8080.
	pathArray := url path asArray.
	self assert: pathArray size = 3.
	"must not use Collection >> #= due to Enterprise Smalltalk (tm)"
	expectedPathArray := Array with: 'foo' with: (self asString: #(228 98 99)) with: (self asString: #(100 234 102)).
	expectedPathArray keysAndValuesDo: [ :index :each |
		self assert: (pathArray at: index) = each ].
	self assert: url parameters size = 2.
	self assert: (url parameters at: (self asString: #(245))) = (self asString: #(115 116 238 103 101 116 99)).
	self assert: (url parameters includesKey: (self asString: #(244))).
	self assert: (url parameters at: (self asString: #(244))) isNil.
	""
	self assert: url fragment = (self asString: #(116 229 114 103 101 116)).
	
	