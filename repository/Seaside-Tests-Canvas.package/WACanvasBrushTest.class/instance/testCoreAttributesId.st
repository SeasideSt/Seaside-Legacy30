testing-attributes
testCoreAttributesId
	self
		assert: [ :html | html div id: 'foo' ]
		gives: '<div id="foo"></div>'.
	self
		assert: [ :html | html div id: 'foo'; id: 'bar' ]
		gives: '<div id="bar"></div>'.
	self
		assert: [ :html | self assert: (html div ensureId = 'id1') ]
		gives: '<div id="id1"></div>'.
	self
		assert: [ :html | self assert: (html div id: 'foo'; ensureId) = 'foo' ]
		gives: '<div id="foo"></div>'.
	self
		assert: [ :html | self assert: (html div id: 'foo'; id) = 'foo' ]
		gives: '<div id="foo"></div>'.
	self
		assert: [ :html | self assert: (html div id) isNil ]
		gives: '<div></div>'