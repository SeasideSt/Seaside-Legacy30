ancestry
moveParentUp: aConfiguration 
	| index |
	index := parents indexOf: aConfiguration ifAbsent: [ ^ self ].
	index > 1 ifTrue: [ parents swap: index with: index - 1 ]