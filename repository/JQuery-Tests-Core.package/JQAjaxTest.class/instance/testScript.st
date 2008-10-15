testing-callbacks
testScript
	self 
		assert: (self ajax script: [ :script | script alert: 'Hello' ])
		equals: self function , '.ajax({dataType:"script",url:"http://www.seaside.st/",data:{"_s":"123","_k":"abc","1":null}})'