testing-modifying
testWrap
	self
		assert: ((self jQuery: 'p') wrap: [ :html | html strong ])
		equals: self name , '("p").wrap("<strong></strong>")'.
	self
		assert: ((self jQuery: 'p') wrapAll: [ :html | html div ])
		equals: self name , '("p").wrapAll("<div></div>")'.
	self
		assert: ((self jQuery: 'p') wrapInner: [ :html | html span ])
		equals: self name , '("p").wrapInner("<span></span>")'