testing-filtering
testReject
	self
		assert: ((self jQuery: 'div') reject: [ :each | each hasClass: 'active' ])
		equals: self name , '("div").filter(function(){return ' , self name , '(this).hasClass("active")})'.
	self
		assert: ((self jQuery: 'div') reject: [ :each :index | (each hasClass: 'active') | index not ])
		equals: self name , '("div").filter(function(){return ' , self name , '(this).hasClass("active")||!arguments[0]})'