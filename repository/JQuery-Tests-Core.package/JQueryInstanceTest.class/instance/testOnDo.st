testing-events
testOnDo
	self
		assert: ((self jQuery: 'a') on: 'click' do: (self javascript alert: 'Clicked'))
		equals: self function , '("a").bind("click",function(){alert("Clicked")})'