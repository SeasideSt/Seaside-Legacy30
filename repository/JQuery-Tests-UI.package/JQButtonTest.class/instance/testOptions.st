testing
testOptions
	self
		assert: ((self jQuery: 'input') button icons: Dictionary new)
		equals: self function , '("input").button({icons:{}})'.
	self
		assert: ((self jQuery: 'input') button label: 'Hello')
		equals: self function , '("input").button({label:"Hello"})'.
	self
		assert: ((self jQuery: 'input') button text: 'Something')
		equals: self function , '("input").button({text:"Something"})'