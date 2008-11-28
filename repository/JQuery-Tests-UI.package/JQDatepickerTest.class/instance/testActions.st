testing
testActions
	self
		assert: ((self jQuery: 'input') datepicker date)
		equals: self function , '("input").datepicker("getDate")'.
	self
		assert: ((self jQuery: 'input') datepicker date: (Date year: 2010 month: 6 day: 11))
		equals: self function , '("input").datepicker("setDate",new Date(2010,5,11))'.
	self
		assert: ((self jQuery: 'input') datepicker hide)
		equals: self function , '("input").datepicker("hide")'.
	self
		assert: ((self jQuery: 'input') datepicker option buttonText: 'foo')
		equals: self function , '("input").datepicker("option",{buttonText:"foo"})'.
	self
		assert: ((self jQuery: 'input') datepicker show)
		equals: self function , '("input").datepicker("show")'