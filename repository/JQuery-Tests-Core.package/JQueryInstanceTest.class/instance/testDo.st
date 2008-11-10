testing-accessors
testDo
	self
		assert: ((self jQuery: 'div')
			do: [ :each | each remove ])
		equals: self name , '("div").each(function(){' , self name , '(this).remove()})'.
	self
		assert: ((self jQuery: 'div')
			do: [ :each | each remove ])
		equals: self name , '("div").each(function(){' , self name , '(this).remove()})'