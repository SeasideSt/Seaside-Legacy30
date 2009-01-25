initializing
initializeFilters
	self addFilter: WAMutualExclusionFilter new.
	self addFilter: WAExceptionFilter new