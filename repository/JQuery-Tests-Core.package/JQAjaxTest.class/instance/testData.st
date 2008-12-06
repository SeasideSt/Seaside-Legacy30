testing-accessing
testData
	self 
		assert: self ajax data
		equals: '""'.
	self
		assert: (self ajax callback: [ ]; data)
		equals: '["_s=1","_k=a","1"].join("&")'.
	self
		assert: (self ajax callback: [ ] value: $a; data)
		equals: '["_s=1","_k=a","1","2="+"a"].join("&")'