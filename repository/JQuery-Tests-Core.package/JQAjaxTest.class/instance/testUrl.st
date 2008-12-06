testing-accessing
testUrl
	| ajax |
	ajax := self ajax callback: [ ].
	self 
		assert: ajax url
		equals: '"http://www.seaside.st/"'.
	self
		assert: ajax fullUrl
		equals: '"http://www.seaside.st/?_s=1&_k=a&1"'.
	self
		assert: ajax javascriptUrl
		equals: '"http://www.seaside.st/"+"?"+["_s=1","_k=a","1"].join("&")'