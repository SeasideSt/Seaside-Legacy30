testing
testSelector
	| selector |
	selector := self selector add: '*'.
	self assert: selector equals: '$$("*")'.

	selector := self selector add: 'div.zork'; add: 'p#zork'.
	self assert: selector equals: '$$("div.zork","p#zork")'.

	self
		assertEnumerable: [ self selector add: 'p>a' ]
		prefix: '$$("p>a")'