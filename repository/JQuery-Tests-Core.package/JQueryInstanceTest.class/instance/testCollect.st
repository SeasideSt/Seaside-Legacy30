testing-filtering
testCollect
	self
		assert: ((self jQuery: 'div') collect: [ :each | each parent ])
		equals: self name , '("div").map(function(){return ' , self name , '(this).parent()})'.
	self
		assert: ((self jQuery: 'div') collect: [ :each :index | each parents eq: index ])
		equals: self name , '("div").map(function(){return ' , self name , '(this).parents().eq(arguments[0])})'