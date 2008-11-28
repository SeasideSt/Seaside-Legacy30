testing
testActions
	self
		assert: ((self jQuery: 'div') progressbar start)
		equals: self function , '("div").progressbar("start")'.
	self
		assert: ((self jQuery: 'div') progressbar stop)
		equals: self function , '("div").progressbar("stop")'.
	self
		assert: ((self jQuery: 'div') progressbar pause)
		equals: self function , '("div").progressbar("pause")'.
	self
		assert: ((self jQuery: 'div') progressbar start)
		equals: self function , '("div").progressbar("start")'.
	self
		assert: ((self jQuery: 'div') progressbar progress: 12)
		equals: self function , '("div").progressbar("progress",12)'