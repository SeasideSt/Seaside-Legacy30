testing-options
testData
	self
		assert: (self ajax data: (Array with: 'foo' with: 'bar'))
		equals: self name , '.ajax({data:["foo","bar"]})'