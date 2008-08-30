testing-element
testSelector
	| selector |
	selector := self factory selector add: '*'.
	self assert: selector equals: '$$("*")'.

	selector := self factory selector add: 'div.zork'; add: 'p#zork'.
	self assert: selector equals: '$$("div.zork","p#zork")'.

	self
		assertEnumerable: [ self factory selector add: 'p>a' ]
		prefix: '$$("p>a")'