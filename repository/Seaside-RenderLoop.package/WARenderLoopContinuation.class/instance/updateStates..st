updating
updateStates: aSnapshot
	super updateStates: aSnapshot.
	WAUpdateStatesVisitor new
		snapshot: aSnapshot;
		start: self root