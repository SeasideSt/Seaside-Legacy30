testing
testRenderOn
	self 
		assert: [ :html | html html: (html jQuery render: 123) ]
		renders: '123'.
	self 
		assert: [ :html | html html: (html jQuery render: 'abc') ]
		renders: 'abc'.
	self 
		assert: [ :html | html html: (html jQuery render: [ :h | h div ]) ]
		renders: '<div></div>'