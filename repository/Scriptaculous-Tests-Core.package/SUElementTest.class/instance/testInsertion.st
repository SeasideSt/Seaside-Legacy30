testing-insertion
testInsertion
	| element |
	element := SUInsertion top.
	self assert: element equals: 'Insertion.Top'.

	element := SUInsertion bottom.
	self assert: element equals: 'Insertion.Bottom'.

	element := SUInsertion before.
	self assert: element equals: 'Insertion.Before'.

	element := SUInsertion after.
	self assert: element equals: 'Insertion.After'