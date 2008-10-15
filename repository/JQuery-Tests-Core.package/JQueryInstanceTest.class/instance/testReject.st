testing-filtering
testReject
	self
		assert: (self jQuery @ 'div' reject: [ :each | each hasClass: 'active' ])
		equals: self function , '("div").filter(function(){return ' , self function , '(this).hasClass("active")})'.
	self
		assert: (self jQuery @ 'div' reject: [ :each :index | (each hasClass: 'active') | index not ])
		equals: self function , '("div").filter(function(){return ' , self function , '(this).hasClass("active")||!arguments[0]})'