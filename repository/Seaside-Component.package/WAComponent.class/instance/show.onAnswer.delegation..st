delegation
show: aComponent onAnswer: aBlock delegation: aDelegation
	| event |
	event := nil.
	event := aComponent onAnswer: [ :value |
		aDelegation remove.
		event remove.
		aBlock value: value ].
	self addDecoration: aDelegation