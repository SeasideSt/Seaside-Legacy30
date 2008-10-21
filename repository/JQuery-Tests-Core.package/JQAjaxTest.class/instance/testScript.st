testing-callbacks
testScript
	self 
		assert: (self ajax script: [ :script | script alert: 'Hello' ])
		equals: self name , '.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1"].join("&"),dataType:"script"})'