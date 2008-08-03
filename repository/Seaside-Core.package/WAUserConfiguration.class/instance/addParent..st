ancestry
addParent: aConfiguration 
	(self canAddParent: aConfiguration) 
		ifTrue: [ parents add: aConfiguration ]
		ifFalse: 
			[ self error: 'Cannot add this configuration as a parent. Would this cause a circular ancestry graph?' ]