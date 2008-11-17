testing-accessing
testUrl
	self 
		assert: self ajax url
		equals: '"http://www.seaside.st/"'.
	self
		assert: self ajax fullUrl
		equals: '"http://www.seaside.st/?_s=1&_k=a&1"'.
	self
		assert: self ajax javascriptUrl
		equals: '"http://www.seaside.st/"+"?"+["_s=1","_k=a","1"].join("&")'