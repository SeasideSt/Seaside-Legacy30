private
findIndex: aComponent ifAbsent: aBlock
	| index |
	index := elements findFirst: [ :each | each value = aComponent ].
	index isZero ifTrue: [ aBlock value ].
	^ index