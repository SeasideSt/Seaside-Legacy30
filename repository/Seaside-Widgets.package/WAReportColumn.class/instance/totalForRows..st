public
totalForRows: aCollection
	^ hasTotal
		ifFalse: ['']
		ifTrue: [formatBlock value: (aCollection detectSum: [:r | self valueForRow: r])]