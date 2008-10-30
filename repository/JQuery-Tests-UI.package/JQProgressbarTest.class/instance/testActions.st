testing
testActions
	self
		assert: ((self jQuery: 'div') progressbar start)
		equals: self name , '("div").progressbar("start")'.
	self
		assert: ((self jQuery: 'div') progressbar stop)
		equals: self name , '("div").progressbar("stop")'.
	self
		assert: ((self jQuery: 'div') progressbar pause)
		equals: self name , '("div").progressbar("pause")'.
	self
		assert: ((self jQuery: 'div') progressbar start)
		equals: self name , '("div").progressbar("start")'.
	self
		assert: ((self jQuery: 'div') progressbar progress: 12)
		equals: self name , '("div").progressbar("progress",12)'