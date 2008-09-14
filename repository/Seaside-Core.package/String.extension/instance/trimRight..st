*Seaside-Core
trimRight: aBlock
	"Trim characters satisfying the condition given in aBlock from the right side of the receiving string."

	| right |
	right := self size.
	[ 1 <= right and: [ aBlock value: (self at: right) ] ] 
		whileTrue: [ right := right - 1 ].
	^ self copyFrom: 1 to: right