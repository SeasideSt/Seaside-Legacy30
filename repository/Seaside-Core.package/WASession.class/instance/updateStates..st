updating
updateStates: aSnapshot
	| current |
	current := self filter.
	[ current = self ] whileFalse: [
		current updateStates: aSnapshot.
		current := current next ].
	aSnapshot register: filter