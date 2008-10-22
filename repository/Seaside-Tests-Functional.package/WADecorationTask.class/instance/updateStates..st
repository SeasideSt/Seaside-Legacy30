initialize-release
updateStates: aSnapshot
	super updateStates: aSnapshot.
	component1 visiblePresentersDo: [ :each | each updateStates: aSnapshot ].
	component2 visiblePresentersDo: [ :each | each updateStates: aSnapshot ]