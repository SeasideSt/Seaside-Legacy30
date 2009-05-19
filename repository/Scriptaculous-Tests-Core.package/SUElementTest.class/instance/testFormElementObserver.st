testing-observers
testFormElementObserver
	self 
		assert: self formElementObserver
		equals: 'new Form.Element.Observer(this,1,function(){})'.
	self 
		assert: (self formElementObserver 
			id: 'foo';
			frequency: 2;
			function: (JSFunction on: self canvas) refresh)
		equals: 'new Form.Element.Observer("foo",2,function(element,value){window.location="http://www.seaside.st/?_s=1&_k=a"})'