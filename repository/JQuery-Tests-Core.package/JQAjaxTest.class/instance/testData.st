testing-accessing
testData
	self 
		assert: self ajax data 
		equals: '["_s=1","_k=a","1"].join("&")'