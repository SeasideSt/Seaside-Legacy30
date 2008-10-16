testing-css
testCssAt
	self
		assert: ((self jQuery: '#foo') cssAt: 'border')
		equals: self name , '("#foo").css("border")'