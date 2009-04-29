testing-convenience
testSerializeForm
	self
		assert: (self ajax serializeForm)
		equals: self function , '.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1",' , self function , '(this).find(":input").serialize()].join("&")})'