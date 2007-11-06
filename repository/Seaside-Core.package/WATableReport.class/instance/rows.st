accessing
rows
	| r |
	self sortColumn ifNil: [^ rows].
	r := self sortColumn sortRows: rows.
	^ self isReversed ifTrue: [r reversed] ifFalse: [r]