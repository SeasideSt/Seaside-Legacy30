testing
testJoin
	self 
		assert: (JSJoin new)
		equals: '[].join("&")'.
	self
		assert: (JSJoin on: #('foo')) 
		equals: '["foo"].join("&")'.
	self
		assert: (JSJoin on: #('foo' 'bar'))
		equals: '["foo","bar"].join("&")'