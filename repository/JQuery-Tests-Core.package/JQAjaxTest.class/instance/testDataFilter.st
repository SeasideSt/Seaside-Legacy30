testing-options
testDataFilter
	self
		assert: (self ajax reset; dataFilter: (self javascript alert: 'Hello'))
		equals: self function , '.ajax({dataFilter:function(){return alert("Hello")}})'