accessing
handle: aRequestContext
	nextUnconsumedPathElement := aRequestContext consumer peek.
	super handle: aRequestContext