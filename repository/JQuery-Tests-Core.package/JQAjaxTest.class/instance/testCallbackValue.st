testing-callbacks
testCallbackValue
	self 
		assert: (self ajax callback: [ ] value: (self jQuery this hasClass: 'foo'))
		equals: self name , '.ajax({url:"http://www.seaside.st/",data:["_s=123","_k=abc","1="+' , self name , '(this).hasClass("foo")].join("&")})'