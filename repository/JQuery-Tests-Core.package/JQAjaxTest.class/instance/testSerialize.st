testing-parameters
testSerialize
	self
		assert: (self ajax serializeThis)
		equals: self function , '.ajax({data:$(this).serialize()})'.
	self
		assert: (self ajax serializeForm)
		equals: self function , '.ajax({data:$(this).find(":input").serialize()})'.
	self
		assert: (self ajax serialize: (self jQuery: 'form'))
		equals: self function , '.ajax({data:$("form").serialize()})'
