tests
testLogger
	self 
		assert: [ :html | html div onClick: (html logger log: 'Foo') ]
		renders: '<div onclick="console.log(''Foo'')"></div>'