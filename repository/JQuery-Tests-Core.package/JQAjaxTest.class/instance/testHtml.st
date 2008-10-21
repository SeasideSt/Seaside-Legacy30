testing-callbacks
testHtml
	self 
		assert: (self ajax html: [ :html | html div ])
		equals: self name , '.ajax({url:"http://www.seaside.st/",data:["_s=1","_k=a","1"].join("&"),dataType:"html"})'