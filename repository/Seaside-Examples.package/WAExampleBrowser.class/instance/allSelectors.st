helper
allSelectors
	^ (class class selectors select: [ :each | each beginsWith: self selectorPrefix ])
		asSortedCollection