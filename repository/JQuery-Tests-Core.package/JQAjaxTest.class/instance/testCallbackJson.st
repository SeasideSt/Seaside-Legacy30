testing-convenience
testCallbackJson
	self
		assert: (self ajax callback: [ :value | ] json: self mock)
		equals: self function , '.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1","2="+JSON.stringify(mock)].join("&")})'