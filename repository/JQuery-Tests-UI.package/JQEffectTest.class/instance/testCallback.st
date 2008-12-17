testing
testCallback
	self
		assert: (self effect hide; blind; callback: (self javascript alert: 'Done'))
		equals: self function , '("div").hide("blind",{},function(){alert("Done")})'.
	self
		assert: (self effect show; blind; normal; callback: (self javascript alert: 'Done'))
		equals: self function , '("div").show("blind",{},"normal",function(){alert("Done")})'.
