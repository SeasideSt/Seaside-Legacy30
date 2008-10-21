testing-options
testDataFilter
	self
		assert: (self ajax reset; dataFilter: (self javascript alert: 'Hello'))
		equals: self name , '.ajax({dataFilter:function(){return alert("Hello")}})'