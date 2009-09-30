*grease-core
trimBoth: aBlock
	"Trim characters satisfying the condition given in aBlock from both sides of the receiving string."

	| left right |
	left := 1.
	right := self size.
	[ left <= self size and: [ aBlock value: (self at: left) ] ]
		whileTrue: [ left := left + 1 ].
	[ left <= right and: [ aBlock value: (self at: right) ] ]
		whileTrue: [ right := right - 1 ].
	^ self copyFrom: left to: right