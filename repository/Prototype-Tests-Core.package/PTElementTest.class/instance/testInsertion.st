testing-insertion
testInsertion
	| element |
	element := PTInsertion top.
	self assert: element equals: 'Insertion.Top'.

	element := PTInsertion bottom.
	self assert: element equals: 'Insertion.Bottom'.

	element := PTInsertion before.
	self assert: element equals: 'Insertion.Before'.

	element := PTInsertion after.
	self assert: element equals: 'Insertion.After'