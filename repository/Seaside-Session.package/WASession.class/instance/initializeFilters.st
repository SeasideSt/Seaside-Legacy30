initializing
initializeFilters
	self addFilter: WAMutualExclusionFilter new.
	self addFilter: WAEscapeFilter new.
	self addFilter: WAExceptionFilter new