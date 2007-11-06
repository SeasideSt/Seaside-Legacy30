decorations
decoration: oldDecoration shouldWrap: newDecoration
	^ (oldDecoration isGlobal and: [newDecoration isGlobal not])
		or: [oldDecoration isLocal and: [newDecoration isDelegation]]