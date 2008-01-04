actions
show: aComponent
	self visible addLast: aComponent.
	self maxVisible isNil ifFalse: [
		[ self maxVisible < self visible size ]
			whileTrue: [ self hide: self visible first ] ]