updating
updateStates: aSnapshot
	self session updateStates: aSnapshot.
	self root visiblePresentersDo: [ :each |
		(each isDecoration and: [ each isDelegation ])
			ifTrue: [ each component updateStates: aSnapshot ].
		each updateStates: aSnapshot ]