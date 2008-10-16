testing-callbacks
testHtml
	self 
		assert: (self ajax html: [ :html | html div ])
		equals: self name , '.ajax({dataType:"html",url:"http://www.seaside.st/",data:{"_s":"123","_k":"abc","1":null}})'