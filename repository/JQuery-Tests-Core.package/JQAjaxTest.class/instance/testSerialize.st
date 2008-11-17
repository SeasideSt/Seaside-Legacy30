testing-parameters
testSerialize
	self
		assert: (self ajax serializeThis)
		equals: '$.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1",$(this).serialize()].join("&")})'.
	self
		assert: (self ajax serializeForm)
		equals: '$.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1",$(this).find(":input").serialize()].join("&")})'.
	self
		assert: (self ajax serialize: (self jQuery: 'form'))
		equals: '$.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1",$("form").serialize()].join("&")})'
