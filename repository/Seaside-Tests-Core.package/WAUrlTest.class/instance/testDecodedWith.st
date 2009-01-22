testing-encoding
testDecodedWith
	| pathArray |
	"http://ùser:paß@localhost:8080/foo/äbc/dêf?õ=stîgetc&ô#tårget"
	url := (WAUrl absolute: 'http://%c3%b9ser:pa%c3%9f@localhost:8080/foo/%C3%A4bc/d%c3%aaf?%c3%b5=st%c3%aegetc&%c3%b4#t%c3%a5rget')
		decodedWith: (WAPlatform current codecForEncoding: 'utf-8').
	
	self assert: url scheme = 'http'.
	self assert: url username = 'ùser'.
	self assert: url password = 'paß'.
	self assert: url hostname = 'localhost'.
	self assert: url port = 8080.
	pathArray := url path asArray.
	self assert: pathArray size = 3.
	"must not use Collection >> #= due to Enterprise Smalltalk (tm)"
	#('foo' 'äbc' 'dêf') keysAndValuesDo: [ :index :each |
		self assert: (pathArray at: index) = each ].
	self assert: url parameters size = 2.
	self assert: (url parameters at: 'õ') = 'stîgetc'.
	self assert: (url parameters includesKey: 'ô').
	self assert: (url parameters at: 'ô') isNil.
	""
	self assert: url fragment = 'tårget'.
	
	