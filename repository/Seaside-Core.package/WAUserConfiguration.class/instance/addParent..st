ancestry
addParent: aConfiguration
	(self parents includes: aConfiguration)
		ifTrue: [ ^ aConfiguration ].
	(self canAddParent: aConfiguration) 
		ifTrue: [ parents add: aConfiguration ]
		ifFalse: [ self error: 'Cannot add this configuration as a parent. Would this cause a circular ancestry graph?' ].
	^ aConfiguration