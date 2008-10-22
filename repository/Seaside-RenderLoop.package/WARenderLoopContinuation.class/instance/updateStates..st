updating
updateStates: aSnapshot
	super updateStates: aSnapshot.
	WAAllPresenterGuide new
		client: (WAUpdateStatesVisitor new snapshot: aSnapshot; yourself);
		start: self root