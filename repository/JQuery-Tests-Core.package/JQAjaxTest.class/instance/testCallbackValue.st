testing-callbacks
testCallbackValue
	self 
		assert: (self ajax callback: [ ] value: (self jQuery this hasClass: 'foo'))
		equals: self function , '.ajax({url:"http://www.seaside.st/",data:{"_s":"123","_k":"abc","1":' , self function , '(this).hasClass("foo")}})'