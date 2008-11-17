testing
testLoad
	self
		assert: ((self jQuery expression: 'li') load url: 'http://www.seaside.st')
		equals: '$("li").load("http://www.seaside.st"+"?"+["_s=1","_k=a","1"].join("&"))'