ancestry
moveParentDown: aConfiguration 
	| index |
	index := parents indexOf: aConfiguration ifAbsent: [ ^ self ].
	index < parents size ifTrue: [ parents swap: index with: index + 1 ]