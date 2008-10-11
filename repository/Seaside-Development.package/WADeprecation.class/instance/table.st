accessing
table
	table isNil ifTrue: [
		table := self buildTable ].
	^table