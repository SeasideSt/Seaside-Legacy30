testing
testSelector
	| selector |
	selector := self suSelector add: '*'.
	self assert: selector equals: '$$("*")'.

	selector := self suSelector add: 'div.zork'; add: 'p#zork'.
	self assert: selector equals: '$$("div.zork","p#zork")'.

	self
		assertEnumerable: [ self suSelector add: 'p>a' ]
		prefix: '$$("p>a")'