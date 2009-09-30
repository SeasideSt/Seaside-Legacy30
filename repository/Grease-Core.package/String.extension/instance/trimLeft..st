*grease-core
trimLeft: aBlock
	"Trim characters satisfying the condition given in aBlock from the left side of the receiving string."
	
	| left |
	left := 1.
	[ left <= self size and: [ aBlock value: (self at: left) ] ] 
		whileTrue: [ left := left + 1 ].
	^ self copyFrom: left to: self size