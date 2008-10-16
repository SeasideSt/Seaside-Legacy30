testing-callbacks
testCallback
	self 
		assert: (self ajax callback: [ ])
		equals: self name , '.ajax({url:"http://www.seaside.st/",data:{"_s":"123","_k":"abc","1":null}})'.