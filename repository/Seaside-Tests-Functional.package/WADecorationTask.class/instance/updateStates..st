initialize-release
updateStates: aSnapshot
	super updateStates: aSnapshot.
	WAPluggableVisiblePresentersVisitor new
		start: component1 do: [ :each | each updateStates: aSnapshot ].
	WAPluggableVisiblePresentersVisitor new
		start: component2 do: [ :each | each updateStates: aSnapshot ]