testing-callbacks
testCallbackValue
	self 
		assert: (self ajax callback: [ ] value: (self jQuery this hasClass: 'foo'))
		equals: self name , '.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1","2="+' , self name , '(this).hasClass("foo")].join("&")})'