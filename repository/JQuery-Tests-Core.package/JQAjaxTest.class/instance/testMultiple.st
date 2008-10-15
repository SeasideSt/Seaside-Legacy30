testing-callbacks
testMultiple
	self 
		assert: (self ajax
			callback: [ :value | ] value: $a; 
			callback: [ :value | ] value: $b;
			callback: [ ])
		equals: self function , '.ajax({url:"http://www.seaside.st/",data:{"_s":"123","_k":"abc","1":"a","2":"b","3":null}})'.