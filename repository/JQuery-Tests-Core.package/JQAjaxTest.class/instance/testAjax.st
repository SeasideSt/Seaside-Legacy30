testing
testAjax
	self 
		assert: self ajax
		equals: self name , '.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1"].join("&")})'.
	self 
		assert: self ajax reset
		equals: self name , '.ajax()'