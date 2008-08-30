testing-element
testElementEvents
	self
		assert: (self element fire: 'foo')
		equals: '$(this).fire("foo")'.
	self
		assert: (self element fire: 'foo' with: 123)
		equals: '$(this).fire("foo",123)'.
	self
		assert: (self element on: 'click' do: self event stop)
		equals: '$(this).observe("click",function(event){Event.stop(event)})'.
	self
		assert: (self element id: 'foo'; on: 'mouseout' do: self element hide)
		equals: '$("foo").observe("mouseout",function(event){$(this).hide()})'