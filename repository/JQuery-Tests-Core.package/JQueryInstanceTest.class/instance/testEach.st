testing-accessors
testEach
	self
		assert: ((self jQuery: 'div')
			each: [ :each | each remove ])
		equals: self function , '("div").each(function(){' , self function , '(this).remove()})'.
	self
		assert: ((self jQuery: 'div')
			each: [ :each :index | each text: index ])
		equals: self function , '("div").each(function(){' , self function , '(this).text(arguments[0])})'