testing-events
testOnDo
	self
		assert: ((self jQuery: 'a') on: 'click' do: (self javascript alert: 'Clicked'))
		equals: self name , '("a").bind("click",function(){alert("Clicked")})'